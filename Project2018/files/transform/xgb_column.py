# Isaac Li
# 1.23.2018

import time
import numpy as np
from sklearn.model_selection import KFold
from sklearn.metrics import mean_squared_error
import function

train, test = function.read_file(path='')
train["血糖"] = np.log1p(train["血糖"])
train, test = function.add_column(train, test)
train, test = function.transform(train, test)

print('\n\nStart...')
t0, mses = time.time(), []
train_preds, test_preds = np.zeros(train.shape[0]), np.zeros((test.shape[0], 5))
predictors = [f for f in test.columns if f not in ['血糖']]
kf = KFold(n_splits=5, shuffle=True, random_state=520)

for i, (train_index, test_index) in enumerate(kf.split(train)):
    print('   .{}/5.'.format(i + 1))
    train_feat1, train_feat2 = train.iloc[train_index], train.iloc[test_index]
    gbm = function.settings.model_xgb.fit(train_feat1[predictors], train_feat1['血糖'])

    predict = gbm.predict(train_feat2[predictors])
    train_preds[test_index] += predict
    mses.append(.5 * mean_squared_error(np.expm1(train_feat2['血糖']), np.expm1(predict)))
    test_preds[:, i] = gbm.predict(test[predictors])

cv = .5 * mean_squared_error(np.expm1(train['血糖']), np.expm1(train_preds))
print('\nFinished.\n\nSeconds -> %s\n' % str(time.time() - t0)[:8])
function.result('XGBoost', mses, cv, test_preds)
