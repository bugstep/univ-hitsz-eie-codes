from sklearn.model_selection import GridSearchCV
from time import time
import numpy as np
import pandas as pd
import xgboost as xgb

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

model_xgb = xgb.XGBRegressor(colsample_bytree=0.65, min_child_weight=10, n_estimators=175,
                             gamma=0.03, max_depth=8, subsample=0.5, eta=0.01,
                             verbosity=1, objective='reg:squarederror', nthread=8)

parameters = {'subsample': (0.5, 0.65, 0.8),
              'colsample_bytree': (0.5, 0.65, 0.8),
              'n_estimators': (300, 600, 1000, 2000),
              'min_child_weight': (10, 25, 40),
              'eta': (0.01, 0.05, 0.1, 0.3)}
"""
XGBRegressor(base_score=0.5, booster='gbtree', colsample_bylevel=1,
             colsample_bynode=1, colsample_bytree=0.65, eta=0.01, gamma=0.03,
             importance_type='gain', learning_rate=0.1, max_delta_step=0,
             max_depth=8, min_child_weight=10, missing=None, n_estimators=300,
             n_jobs=1, nthread=8, objective='reg:squarederror', random_state=0,
             reg_alpha=0, reg_lambda=1, scale_pos_weight=1, seed=None,
             silent=None, subsample=0.5, verbosity=1)
	colsample_bytree: 0.65
	eta: 0.01
	min_child_weight: 10
	n_estimators: 300
	subsample: 0.5
"""

grid_search = GridSearchCV(model_xgb, parameters, cv=5, n_jobs=1, verbose=1, scoring="neg_mean_squared_error")

print("Performing grid search...")
t0 = time()
grid_search.fit(train, y_train)
print("done in %0.3fs" % (time() - t0))
print("Best score: %0.3f" % grid_search.best_score_)
best_parameters = dict(grid_search.best_estimator_.get_params())
print(grid_search.best_estimator_)
for param_name in sorted(parameters.keys()):
    print("\t%s: %r" % (param_name, best_parameters[param_name]))
