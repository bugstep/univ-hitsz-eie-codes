import os
import sys
import datetime
import numpy as np
import pandas as pd
import xgboost
from sklearn.metrics import mean_squared_error
from sklearn.model_selection import KFold, cross_val_score, train_test_split

train = pd.read_csv('../_source/train.csv')
test = pd.read_csv('../_source/test.csv')

ntrain = train.shape[0]
ntest = test.shape[0]
y_train = train.SalePrice.values
ids = test['Id']

all_data = pd.concat((train, test), sort=True).reset_index(drop=True)
all_data.drop(['SalePrice'], axis=1, inplace=True)
print("all_data size is : {}".format(all_data.shape))

all_data.drop("Id", axis=1, inplace=True)

# missing data
# total = all_data.isnull().sum().sort_values(ascending=False)
# percent = (all_data.isnull().sum() / all_data.isnull().count()).sort_values(ascending=False)
# missing_data = pd.concat([total, percent], axis=1, keys=['Total', 'Percent'])
# all_data = all_data.drop((missing_data[missing_data['Total'] > 1]).index, 1)
# all_data = all_data.drop(all_data.loc[all_data['Electrical'].isnull()].index)

y_train = np.log1p(y_train)
all_data['GrLivArea'] = np.log1p(all_data['GrLivArea'])
all_data['HasBsmt'] = pd.Series(len(all_data['TotalBsmtSF']), index=all_data.index)
all_data['HasBsmt'] = 0
all_data.loc[all_data['TotalBsmtSF'] > 0, 'HasBsmt'] = 1
all_data.loc[all_data['HasBsmt'] == 1, 'TotalBsmtSF'] = np.log1p(all_data['TotalBsmtSF'])

all_data = pd.get_dummies(all_data)
print("all_data size is : {}".format(all_data.shape))

train = all_data[:ntrain]
test = all_data[-ntest:]

# Grid Search
xgb = xgboost.XGBRegressor(base_score=0.5, booster='gbtree', colsample_bylevel=1,
                           colsample_bynode=1, colsample_bytree=0.65, eta=0.01, gamma=0.03,
                           importance_type='gain', learning_rate=0.1, max_delta_step=0,
                           max_depth=8, min_child_weight=10, missing=None, n_estimators=300,
                           n_jobs=1, nthread=8, objective='reg:squarederror', random_state=0,
                           reg_alpha=0, reg_lambda=1, scale_pos_weight=1, seed=None,
                           silent=None, subsample=0.5, verbosity=1)

xgb = xgboost.XGBRegressor(base_score=0.5, booster='gbtree', colsample_bylevel=1,
                           colsample_bynode=1, colsample_bytree=0.65, eta=0.01, gamma=0.03,
                           importance_type='gain', learning_rate=0.1, max_delta_step=0,
                           max_depth=8, min_child_weight=10, missing=None, n_estimators=175,
                           n_jobs=1, nthread=8, objective='reg:squarederror', random_state=0,
                           reg_alpha=0, reg_lambda=1, scale_pos_weight=1, seed=None,
                           silent=None, subsample=0.5, verbosity=1)

n_folds = 5
kf = KFold(n_folds, shuffle=True, random_state=42).get_n_splits(train.values)
score = np.sqrt(-cross_val_score(xgb, train.values, y_train, scoring="neg_mean_squared_error", cv=kf))
xgb.fit(train, y_train)
y_train_pred = np.expm1(xgb.predict(train))

print(f"XGBoost score: {score.mean():.4f} ({score.std():.4f})")
print("Train Set: ", np.sqrt(mean_squared_error(y_train, np.log1p(y_train_pred))))

y_test_pred = np.expm1(xgb.predict(test))
sub = pd.DataFrame()
sub['Id'] = ids
sub['SalePrice'] = y_test_pred
sub.to_csv(r'../submissions/{}_{}_{:.5f}_{:.5f}.csv'.format(
    os.path.basename(sys.argv[0])[:-3],
    datetime.datetime.now().strftime('%m%d_%H%M'),
    score.mean(), score.std()), index=False)
