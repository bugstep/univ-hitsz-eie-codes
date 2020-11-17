from sklearn.grid_search import GridSearchCV
from time import time
import numpy as np
import pandas as pd
import seaborn as sns
from dateutil.parser import parse
from scipy.stats import skew
from scipy.special import boxcox1p
from sklearn.ensemble import GradientBoostingRegressor

'''location'''
train = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_new_train_barry.csv', encoding='gbk')
test = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_test_A_20180102.csv', encoding='gbk')


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
drop_list = ["id", "体检日期", '乙肝表面抗原', '乙肝表面抗体', '乙肝e抗原', '乙肝e抗体', '乙肝核心抗体']
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
lam = 0.15
for feat in skewed_features:
    all_data[feat] = boxcox1p(all_data[feat], lam)
train = all_data[:ntrain]
test = all_data[ntrain:]


GBoost = GradientBoostingRegressor(n_estimators=28000, learning_rate=0.09,
                                   max_depth=6, max_features='sqrt',
                                   min_samples_leaf=15, min_samples_split=70,
                                   loss='huber', random_state=5)
parameters = {'min_samples_split': (5,15,25,35,50,70,100),}

grid_search = GridSearchCV(GBoost, parameters, n_jobs=1, verbose=1)
print("Performing grid search...")
print("parameters:")
print(parameters)
t0 = time()
grid_search.fit(train, y_train)
print("done in %0.3fs" % (time() - t0))
print()
print("Best score: %0.3f" % grid_search.best_score_)
from sklearn import metrics
best_parameters = dict()
best_parameters = grid_search.best_estimator_.get_params()
for param_name in sorted(parameters.keys()):
    print("\t%s: %r" % (param_name, best_parameters[param_name]))