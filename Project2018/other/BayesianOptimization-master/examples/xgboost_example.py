"""
Baysian hyperparameter optimization [https://github.com/fmfn/BayesianOptimization]
for Mean Absoulte Error objective
on default features for https://www.kaggle.com/c/allstate-claims-severity
"""

__author__ = "Vladimir Iglovikov"

import pandas as pd
import xgboost as xgb
from sklearn.preprocessing import LabelEncoder
from sklearn.metrics import mean_absolute_error
from bayes_opt import BayesianOptimization
from tqdm import tqdm


def xgb_evaluate(min_child_weight,
                 colsample_bytree,
                 max_depth,
                 subsample,
                 gamma,
                 reg_alpha,
                 reg_lambda,
                 n_estimators):

    params['min_child_weight'] = int(min_child_weight)
    params['cosample_bytree'] = max(min(colsample_bytree, 1), 0)
    params['max_depth'] = int(max_depth)
    params['subsample'] = max(min(subsample, 1), 0)
    params['gamma'] = max(gamma, 0)
    params['reg_alpha'] = max(reg_alpha, 0)
    params['reg_lambda'] = max(reg_lambda, 0)
    params['n_estimators'] = max(n_estimators, 0)

    cv_result = xgb.cv(params, xgtrain, num_boost_round=num_rounds, nfold=5,
                       seed=random_state,
                       callbacks=[xgb.callback.early_stop(50)])

    return -cv_result['test-rmse-mean'].values[-1]


def prepare_data():
    train = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_train_20180102.csv', encoding='gbk')
    categorical_columns = train.select_dtypes(include=['object']).columns

    for column in tqdm(categorical_columns):
        le = LabelEncoder()
        train[column] = le.fit_transform(train[column])

    y = train['血糖']

    X = train.drop(['血糖', 'id'], 1)
    xgtrain = xgb.DMatrix(X, label=y)

    return xgtrain


if __name__ == '__main__':
    xgtrain = prepare_data()

    num_rounds = 100
    random_state = 2016
    num_iter = 100
    init_points = 5
    params = {
        'eta': 0.1,
        'silent': 1,
        'metric': 'mse',
        'verbose_eval': True,
        'seed': random_state
    }

    xgbBO = BayesianOptimization(xgb_evaluate, {'min_child_weight': (50, 200),
                                                'colsample_bytree': (0.5, 1),
                                                'max_depth': (2, 5),
                                                'subsample': (0.5, 0.99),
                                                'gamma': (0, 100),
                                                'reg_alpha': (0, 1),
                                                'reg_lambda': (0, 1),
                                                'n_estimators': (1500, 3000)
                                                })

    xgbBO.maximize(init_points=init_points, n_iter=num_iter)
'''
 Step |   Time |      Value |     alpha |   colsample_bytree |     gamma |   max_depth |   min_child_weight |   subsample | 
   30 | 00m28s |   -0.70963 |    7.0695 |             0.1048 |   47.2880 |      5.6801 |            38.5890 |      0.6779 |
   30 | 00m24s |   -0.70923 |    7.5474 |             0.8799 |   21.1151 |      2.0175 |            49.8385 |      0.6735 | 
'''

'''
 Step |   Time |      Value |   colsample_bytree |   max_depth |   min_child_weight |   n_estimators |   reg_alpha |   reg_lambda |   subsample | 
  262 | 03m30s |   -0.70979 |             0.4244 |      2.0065 |            55.4265 |       965.8357 |      0.7334 |       0.9581 |      0.8801 | 
  255 | 02m30s |   -0.70709 |             0.8376 |      2.0492 |           158.3515 |      2041.3090 |      0.9987 |       0.6278 |      0.9705 | 



'''