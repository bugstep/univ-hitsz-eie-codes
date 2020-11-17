import time
import datetime
import numpy as np
import pandas as pd
import lightgbm as lgb
from dateutil.parser import parse
from sklearn.cross_validation import KFold
from sklearn.metrics import mean_squared_error
from sklearn.svm import SVR as svr

data_path = '../data/'

train = pd.read_csv(data_path + 'd_train_20180102.csv', encoding='gb2312')
test = pd.read_csv(data_path + 'd_test_A_20180102.csv', encoding='gb2312')

def make_feat(train, test):
    train_id = train.id.values.copy()
    test_id = test.id.values.copy()
    data = pd.concat([train, test])

    data['性别'] = data['性别'].map({'男': 1, '女': 0})
    data['体检日期'] = (pd.to_datetime(data['体检日期']) - parse('2017-10-09')).dt.days

    data.fillna(data.median(axis=0), inplace=True)

    train_feat = data[data.id.isin(train_id)]
    test_feat = data[data.id.isin(test_id)]

    return train_feat, test_feat


train_feat, test_feat = make_feat(train, test)
print(train_feat)
print(test_feat.columns)

predictors = [f for f in test_feat.columns if f not in ['血糖', "体检日期", "乙肝表面抗原", "乙肝表面抗体", "乙肝e抗原",
                                                        "乙肝e抗体", "乙肝核心抗体", "id"]]
print(predictors)

def evalerror(pred, df):
    label = df.get_label().values.copy()
    score = mean_squared_error(label, pred) * 0.5
    return ('0.5mse', score, False)

print('开始训练...')
print('开始CV 5折训练...')
t0 = time.time()
train_preds = np.zeros(train_feat.shape[0])
test_preds = np.zeros((test_feat.shape[0], 5))
kf = KFold(len(train_feat), n_folds=5, shuffle=True, random_state=520)
print(kf)
for i, (train_index, test_index) in enumerate(kf):
    print('第{}次训练...'.format(i), train_index, test_index)

    train_feat1 = train_feat.iloc[train_index]
    train_feat2 = train_feat.iloc[test_index]

    svr_rbf = svr(kernel='rbf', C=1e3, gamma=0.1)
    model_rbf = svr_rbf.fit(train_feat1[predictors], train_feat1['血糖'])
    print("debug")

    train_preds[test_index] = model_rbf.predict(train_feat2[predictors])
    test_preds[:, i] = model_rbf.predict(test_feat[predictors])

print('线下得分：    {}'.format(mean_squared_error(train_feat['血糖'], train_preds) * 0.5))
print('CV训练用时{}秒'.format(time.time() - t0))