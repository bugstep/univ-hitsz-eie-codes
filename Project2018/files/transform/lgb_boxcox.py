import time
import numpy as np
from sklearn.model_selection import KFold
from sklearn.metrics import mean_squared_error
import function
from scipy.special import boxcox


def inverse_box_cox(y, ld):
    if ld == 0:
        return np.exp(y)
    else:
        return np.exp(np.log(ld*y+1)/ld)


train, test = function.read_file()
lambda_of_box_cox = 0.15
train["血糖"] = boxcox(train["血糖"], lambda_of_box_cox)
train, test = function.transform(train, test)

print('\n\nStart...')
t0 = time.time()
train_preds, test_preds, mses = np.zeros(train.shape[0]), np.zeros((test.shape[0], 5)), []
predictors = [f for f in test.columns if f not in ['血糖']]
kf = KFold(n_splits=5, shuffle=True, random_state=520)

for i, (train_index, test_index) in enumerate(kf.split(train)):
    print('   .{}/5.'.format(i + 1))
    train_feat1, train_feat2 = train.iloc[train_index], train.iloc[test_index]
    gbm = function.settings.model_lgb.fit(train_feat1[predictors], train_feat1['血糖'])
    predict = gbm.predict(train_feat2[predictors])
    train_preds[test_index] += predict
    mses.append(.5 * mean_squared_error(inverse_box_cox(train_feat2['血糖'], lambda_of_box_cox),
                                        inverse_box_cox(predict, lambda_of_box_cox)))
    test_preds[:, i] = gbm.predict(test[predictors])

cv = mean_squared_error(np.expm1(train['血糖']), np.expm1(train_preds)) * 0.5
print('\nFinished.\n\nSeconds -> %s\n' % str(time.time() - t0)[:8])
function.result('LGBM', mses, cv, test_preds)
