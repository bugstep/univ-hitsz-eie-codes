# author:wjn
# function:fill NAN in data
# version:v0.2

import time
import datetime
import numpy as np
import pandas as pd
import lightgbm as lgb
from sklearn.cross_validation import KFold
from sklearn.metrics import mean_squared_error


def evalerror(pred, df):
    label = df.get_label().values.copy()
    score = mean_squared_error(label, pred) * 0.5
    return ('0.5mse', score, False)


def fill_lgb(data, fill_target, fill_predictors):
    index_test = data[fill_target].isnull()
    index_train = data[fill_target].notnull()
    test_feat = data.loc[index_test]
    train_feat = data.loc[index_train]

    train_preds = np.zeros(train_feat.shape[0])
    test_preds = np.zeros((test_feat.shape[0], 5))

    kf = KFold(len(train_feat), n_folds=5, shuffle=True, random_state=520)
    for i, (train_index, test_index) in enumerate(kf):
        train_feat1 = train_feat.iloc[train_index]
        train_feat2 = train_feat.iloc[test_index]
        lgb_train1 = lgb.Dataset(train_feat1[fill_predictors], train_feat1[fill_target], categorical_feature = ['性别'])
        lgb_train2 = lgb.Dataset(train_feat2[fill_predictors], train_feat2[fill_target])
        params = {
            'learning_rate': 0.01,
            'boosting_type': 'gbdt',
            'objective': 'regression',
            'metric': 'mse',
            'num_leaves': 60,
            'min_data': 100,
            'min_hessian': 1,
            'verbose': -1,
            'feature_fraction': 0.95,
        }
        gbm = lgb.train(params,
                        lgb_train1,
                        num_boost_round=3000,
                        valid_sets=lgb_train2,
                        verbose_eval=False,
                        feval=evalerror,
                        early_stopping_rounds=100)
        train_preds[test_index] += gbm.predict(train_feat2[fill_predictors])
        test_preds[:, i] = gbm.predict(test_feat[fill_predictors])

    test_feat[fill_target] = test_preds.mean(axis=1)
    data.loc[index_test] = test_feat
    data.loc[index_train] = train_feat
    return data


def fill_svd():
    pass


def fill(data,
         method,
         fill_predictors,
         fill_targets):

    # choose a function to fill NAN according to arg:method
    if method == "lgb":
        call = fill_lgb
    elif method == "svd":
        call = fill_svd
    else:
        print("Please input a valid algorithm name!")
        exit(1)

    data[fill_predictors].fillna(data[fill_predictors].median(axis=0), inplace=True)

    for x in fill_targets:
        data = call(data, x, fill_predictors)
    data.fillna(data.median(axis=0), inplace=True)

    return data


def load_data(path):
    data = pd.read_csv(path, encoding='gb2312')
    return data
