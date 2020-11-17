from sklearn.grid_search import GridSearchCV
import numpy as np
import pandas as pd
import seaborn as sns
from dateutil.parser import parse
import lightgbm as lgb
from scipy.stats import skew
from scipy.special import boxcox1p

'''location'''
train = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_train_20180102.csv', encoding='gbk')
test = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_test_A_20180102.csv', encoding='gbk')
train["血糖"] = np.log1p(train["血糖"])

color = sns.color_palette()
sns.set_style('darkgrid')
pd.set_option('display.float_format', lambda x: '{:.3f}'.format(x))
train_ID = train['id']
test_ID = test['id']
train['性别'] = train['性别'].map({'男': 1, '女': 2})
test['性别'] = test['性别'].map({'男': 1, '女': 2})
train['体检日期'] = (pd.to_datetime(train['体检日期']) - parse('2017-09-09')).dt.days
train.fillna(train.median(axis=0), inplace=True)
test['体检日期'] = (pd.to_datetime(test['体检日期']) - parse('2017-09-09')).dt.days
test.fillna(test.median(axis=0), inplace=True)
drop_list = ["id", "体检日期"]  # , '乙肝表面抗原', '乙肝表面抗体', '乙肝e抗原', '乙肝e抗体', '乙肝核心抗体']
for drop in drop_list:
    train.drop(drop, axis=1, inplace=True)
    test.drop(drop, axis=1, inplace=True)
print("\nThe train data size after dropping Id feature is : {} ".format(train.shape))
print("The test data size after dropping Id feature is : {} ".format(test.shape))
ntrain = train.shape[0]
ntest = test.shape[0]
y_train = train.血糖.values
all_data = pd.concat((train, test)).reset_index(drop=True)
all_data.drop(['血糖'], axis=1, inplace=True)
print("all_data size is : {}".format(all_data.shape))
print(np.any(np.isnan(all_data)))
all_data_na = (all_data.isnull().sum() / len(all_data)) * 100
all_data_na = all_data_na.drop(all_data_na[all_data_na == 0].index).sort_values(ascending=False)[:30]
missing_data = pd.DataFrame({'Missing Ratio': all_data_na})
numeric_feats = all_data.dtypes[all_data.dtypes != "object"].index
skewed_feats = all_data[numeric_feats].apply(lambda x: skew(x.dropna())).sort_values(ascending=False)
skewness = pd.DataFrame({'Skew': skewed_feats})
skewness = skewness[abs(skewness) > 0.75]
print("There are {} skewed numerical features to Box Cox transform".format(skewness.shape[0]))
skewed_features = skewness.index
x = all_data.values
for feat in skewed_features:
    if feat != '血糖':
        all_data[feat] = boxcox1p(all_data[feat], 0.15)
train = all_data[:ntrain]
test = all_data[ntrain:]


model_lgb = lgb.LGBMRegressor(objective='regression', num_leaves=6,
                              learning_rate=0.05, n_estimators=300,
                              max_bin=30, bagging_fraction=0.9,
                              bagging_freq=10, feature_fraction=0.5,
                              feature_fraction_seed=10, bagging_seed=10,
                              min_data_in_leaf=50, min_sum_hessian_in_leaf=0.2, nthread=8)
parameters = {'num_leaves': (4,5,6,7,8,9),'n_estimators':(200,300,400,500,600,800,1000),
              'min_data_in_leaf':(50,80,100,150,200)}

grid_search = GridSearchCV(model_lgb, parameters, cv=5, n_jobs=1, verbose=1, scoring="neg_mean_squared_error")
print("Performing grid search...")
print("parameters:")
print(parameters)
from time import time

t0 = time()
grid_search.fit(train, y_train)
print("done in %0.3fs" % (time() - t0))
print()
print("Best score: %0.3f" % grid_search.best_score_)
best_parameters = dict()
best_parameters = grid_search.best_estimator_.get_params()
for param_name in sorted(parameters.keys()):
    print("\t%s: %r" % (param_name, best_parameters[param_name]))
