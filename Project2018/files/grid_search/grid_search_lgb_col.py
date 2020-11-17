from sklearn.grid_search import GridSearchCV
import numpy as np
import pandas as pd
import seaborn as sns
from dateutil.parser import parse
import lightgbm as lgb
from scipy.stats import skew
from scipy.special import boxcox1p
import function
from time import time

train, test = function.read_file()
train["血糖"] = np.log1p(train["血糖"])
train, test = function.add_column(train, test)
train, test = function.transform(train, test)
y_train = train.血糖.values

model_lgb = lgb.LGBMRegressor(objective='regression', num_leaves=4,
                              learning_rate=0.05, n_estimators=100,
                              max_bin=30, bagging_fraction=0.9,
                              bagging_freq=10, feature_fraction=0.5,
                              feature_fraction_seed=10, bagging_seed=10,
                              min_data_in_leaf=70, min_sum_hessian_in_leaf=0.1, nthread=8)
parameters = {'min_sum_hessian_in_leaf': (0.1,0.3,0.2)}

grid_search = GridSearchCV(model_lgb, parameters, cv=5, n_jobs=1, verbose=1, scoring="neg_mean_squared_error")
print("Performing grid search...")
print("parameters:")
print(parameters)


t0 = time()
grid_search.fit(train, y_train)
print("done in %0.3fs" % (time() - t0))
print()
print("Best score: %0.3f" % grid_search.best_score_)
best_parameters = dict()
best_parameters = grid_search.best_estimator_.get_params()
for param_name in sorted(parameters.keys()):
    print("\t%s: %r" % (param_name, best_parameters[param_name]))
