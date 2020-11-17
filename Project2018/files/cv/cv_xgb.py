# Isaac Li
# 1.23.2018

import time
import numpy as np
import xgboost as xgb
from sklearn.model_selection import KFold
from sklearn.metrics import mean_squared_error
import function

train, test = function.read_file()
train = train.loc[train['血糖'] > 5]
train["血糖"] = np.log1p(train["血糖"])
train, test = function.transform(train, test)
pred = test.copy()
pred.drop('血糖', axis=1, inplace=True)

model_xgb = xgb.XGBRegressor(colsample_bytree=0.7, gamma=0.15,
                             learning_rate=0.03, max_depth=5,
                             min_child_weight=80, n_estimators=1100,
                             reg_alpha=0.5, reg_lambda=0.7,
                             subsample=0.9, silent=True,
                             nthread=8, early_stopping_rounds=100)
'''
model_xgb = xgb.XGBRegressor(colsample_bytree=0.4603, gamma=0.0468,
                             learning_rate=0.05, max_depth=3,
                             min_child_weight=1.7817, n_estimators=2200,
                             reg_alpha=0.4640, reg_lambda=0.8571,
                             subsample=0.5213, silent=True,
                             nthread = 8)'''
print('\n\nStart...')
t0 = time.time()
train_preds, test_preds, mses = np.zeros(train.shape[0]), np.zeros((test.shape[0], 5)), []
predictors = [f for f in test.columns if f not in ['血糖']]
kf = KFold(n_splits=5, shuffle=True, random_state=520)

for i, (train_index, test_index) in enumerate(kf.split(train)):
    print('   .{}/5.'.format(i + 1))
    train_feat1, train_feat2 = train.iloc[train_index], train.iloc[test_index]
    gbm = model_xgb.fit(train_feat1[predictors], train_feat1['血糖'])
    predict = gbm.predict(train_feat2[predictors])
    train_preds[test_index] += predict
    mses.append(.5 * mean_squared_error(np.expm1(train_feat2['血糖']), np.expm1(predict)))
    test_preds[:, i] = gbm.predict(test[predictors])

cv = mean_squared_error(np.expm1(train['血糖']), np.expm1(train_preds)) * 0.5
print('\nFinished.\n\nSeconds -> %s\n' % str(time.time() - t0)[:8])
function.result('XGBoost', mses, cv, test_preds)
