# Isaac Li
# 1.25.2018

import time
import numpy as np
from sklearn.model_selection import KFold
from sklearn.metrics import mean_squared_error
import function
from sklearn.ensemble import RandomForestRegressor

train, test = function.read_file()
train["血糖"] = np.log1p(train["血糖"])
# train, test = function.add_column(train, test)
train, test = function.transform(train, test, fill_na=True)

print('\n\nStart...')
t0, mses = time.time(), []
train_preds, test_preds = np.zeros(train.shape[0]), np.zeros((test.shape[0], 5))
predictors = [f for f in test.columns if f not in ['血糖']]
kf = KFold(n_splits=5, shuffle=True, random_state=520)
# Instantiate a RandomRegressor object
MAXDEPTH = 40
regr = RandomForestRegressor(n_estimators=1000,  # No of trees in forest
                             criterion="mse",  # Can also be mae
                             max_features="sqrt",  # no of features to consider for the best split
                             max_depth=MAXDEPTH,  # maximum depth of the tree
                             min_samples_split=2,  # minimum number of samples required to split an internal node
                             min_impurity_decrease=0,  # Split node if impurity decreases greater than this value.
                             oob_score=True,  # whether to use out-of-bag samples to estimate error on unseen data.
                             n_jobs=-1,  # No of jobs to run in parallel
                             random_state=0,
                             verbose=0  # Controls verbosity of process
                             )


for i, (train_index, test_index) in enumerate(kf.split(train)):
    print('   .{}/5.'.format(i + 1))
    train_feat1, train_feat2 = train.iloc[train_index], train.iloc[test_index]

    regr.fit(train_feat1[predictors], train_feat1['血糖'])
    predict = predictions = regr.predict(train_feat2[predictors])
    train_preds[test_index] += predict
    mses.append(.5 * mean_squared_error(np.expm1(train_feat2['血糖']), np.expm1(predict)))
    test_preds[:, i] = regr.predict(test[predictors])

cv = .5 * mean_squared_error(np.expm1(train['血糖']), np.expm1(train_preds))
print('\nFinished.\n\nSeconds -> %s\n' % str(time.time() - t0)[:8])
function.result('R.F.', mses, cv, test_preds)
