# Isaac Li
# 1.23.2018

import time
import numpy as np
import lightgbm as lgb
from sklearn.model_selection import KFold
from sklearn.metrics import mean_squared_error
import function

train, test = function.read_file()
train["血糖"] = np.log1p(train["血糖"])
train, test = function.transform(train, test)
pred = test.copy()
pred.drop('血糖', axis=1, inplace=True)

model_lgb = lgb.LGBMRegressor(objective='regression', num_leaves=8,
                              learning_rate=0.05, n_estimators=400,
                              max_bin=30, bagging_fraction=0.9,
                              bagging_freq=10, feature_fraction=0.5,
                              feature_fraction_seed=10, bagging_seed=10,
                              min_data_in_leaf=80, nthread=8,
                              min_sum_hessian_in_leaf=0.2)

print('\n\nStart...')
t0 = time.time()
train_preds, test_preds, mses = np.zeros(train.shape[0]), np.zeros((test.shape[0], 5)), []
predictors = [f for f in test.columns if f not in ['血糖']]
kf = KFold(n_splits=5, shuffle=True, random_state=520)

for i, (train_index, test_index) in enumerate(kf.split(train)):
    print('   .{}/5.'.format(i + 1))
    train_feat1, train_feat2 = train.iloc[train_index], train.iloc[test_index]
    gbm = model_lgb.fit(train_feat1[predictors], train_feat1['血糖'], categorical_feature=['性别'])
    predict = gbm.predict(train_feat2[predictors])
    train_preds[test_index] += predict
    mses.append(.5 * mean_squared_error(np.expm1(train_feat2['血糖']), np.expm1(predict)))
    test_preds[:, i] = gbm.predict(test[predictors])

cv = mean_squared_error(np.expm1(train['血糖']), np.expm1(train_preds)) * 0.5
print('\nFinished.\n\nSeconds -> %s\n' % str(time.time() - t0)[:8])
function.result('LGBM', mses, cv, test_preds)
