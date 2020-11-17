import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from dateutil.parser import parse
import datetime
from sklearn.model_selection import KFold, cross_val_score
from sklearn.metrics import mean_squared_error
import lightgbm as lgb
from scipy.stats import skew
from scipy.special import boxcox1p


'''location'''
train = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_train_20180102.csv', encoding='gbk')
test = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_test_A_20180102.csv', encoding='gbk')
#train = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_new_train_barry.csv', encoding='gbk')
#test = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_new_test_A_barry.csv', encoding='gbk')
'''select'''
# train = train.loc[train['血糖'] < 10]
"""
'''
old = []
for item in train['年龄']:
    if item > 51:
        old.append(3)
    elif 37 < item <= 51:
        old.append(2)
    else:
        old.append(10)
train['年龄'] = old
'''
old = []
for item in train['年龄']:
    if item > 51:
        old.append(1)
    else:
        old.append(0)
train['老'] = old
mid = []
for item in train['年龄']:
    if 37 < item <= 51:
        mid.append(1)
    else:
        mid.append(0)
train['中'] = mid
yng = []
for item in train['年龄']:
    if item <= 37:
        yng.append(1)
    else:
        yng.append(0)
train['少'] = yng
print(train["老"])
# train.drop('年龄', axis=1, inplace=True)
# test.drop('年龄', axis=1, inplace=True)
print(train)
"""


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
train = all_data[:ntrain]
test = all_data[ntrain:]

# kaggle
model_lgb = lgb.LGBMRegressor(objective='regression', num_leaves=5,
                              learning_rate=0.05, n_estimators=720,
                              max_bin=55, bagging_fraction=0.8,
                              bagging_freq=5, feature_fraction=0.2319,
                              feature_fraction_seed=9, bagging_seed=9,
                              min_data_in_leaf=6, min_sum_hessian_in_leaf=11, nthread=8)

# grid search
model_lgb = lgb.LGBMRegressor(objective='regression', num_leaves=4,
                              learning_rate=0.05, n_estimators=470,
                              max_bin=55, bagging_fraction=0.9,
                              bagging_freq=10, feature_fraction=0.35,
                              feature_fraction_seed=9, bagging_seed=9,
                              min_data_in_leaf=50, min_sum_hessian_in_leaf=0.1, nthread=8)


def msle(y, y_pred):
    return mean_squared_error(y, y_pred) * 0.5


def rmsle_cv(model):
    kf = KFold(5, shuffle=True, random_state=42).get_n_splits(train.values)
    rmse = 0.5 * (-cross_val_score(model, train.values, y_train, scoring="neg_mean_squared_error", cv=kf))
    return rmse


# LGBMRegressor
y_train_1 = y_train
model_lgb.fit(train, y_train)
xgb_train_pred = model_lgb.predict(train)
xgb_train_pred_1 = xgb_train_pred
xgb_pred = model_lgb.predict(test)
score = rmsle_cv(model_lgb)
print(score)
print("LGBMRegressor score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))
print('tianchi result:  LightGBM')
print(msle(y_train_1, xgb_train_pred_1))
print(y_train_1)
print(xgb_pred[938])
lgb.plot_importance(model_lgb)
plt.rcParams['font.sans-serif'] = ['FangSong']
plt.rcParams['axes.unicode_minus'] = False
plt.show()
sns.set()
sub = pd.DataFrame()
sub['Predict'] = xgb_train_pred_1
sub['Train'] = y_train_1
cols = ['Predict', 'Train']
sns.pairplot(sub[cols], size=2.5)
plt.rcParams['font.sans-serif'] = ['FangSong']
plt.rcParams['axes.unicode_minus'] = False
plt.show()
ensemble = xgb_pred
sub = pd.DataFrame()
sub['Id'] = test_ID
sub['Predict'] = ensemble
sub.to_csv("LGBM_{}.csv".format(datetime.datetime.now().strftime('%d-%H-%M-%S')), index=False)

