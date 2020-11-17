# Isaac Li
# 1.25.2018

import time
import numpy as np
from sklearn.model_selection import KFold
from sklearn.metrics import mean_squared_error
import function

train, test = function.read_file()
train["血糖"] = np.log1p(train["血糖"])
train, test = function.add_column(train, test, sqrt=True)
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
    base, power, minimum = 1.7, 1, 7

    predict = np.expm1(predict)
    maximum = predict.max()
    for nnj in range(len(predict)):
        predict[nnj] = predict[nnj] * max((base ** (power * ((predict[nnj] - minimum) / (maximum - minimum)))), 1)
    predict = np.log1p(predict)

    train_preds[test_index] += predict
    mses.append(.5 * mean_squared_error(np.expm1(train_feat2['血糖']), np.expm1(predict)))

    predict = gbm.predict(test[predictors])

    predict = np.expm1(predict)
    maximum = predict.max()
    for nnj in range(len(predict)):
        predict[nnj] = predict[nnj] * max((base ** (power * ((predict[nnj] - minimum) / (maximum - minimum)))), 1)
    predict = np.log1p(predict)
    test_preds[:, i] = predict

cv = .5 * mean_squared_error(np.expm1(train['血糖']), np.expm1(train_preds))
print('\nFinished.\n\nSeconds -> %s\n' % str(time.time() - t0)[:8])
function.result('XGBoost', mses, cv, test_preds)
