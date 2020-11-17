# import some necessary libraries
import numpy as np # linear algebra
import pandas as pd # data processing, CSV file I/O (e.g. pd.read_csv)
import matplotlib.pyplot as plt  # Matlab-style plotting
import warnings
import seaborn as sns
from dateutil.parser import parse
import datetime


color = sns.color_palette()
sns.set_style('darkgrid')


# Now let's import and put the train and test datasets in  pandas dataframe
pd.set_option('display.float_format', lambda x: '{:.3f}'.format(x))

train = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_train_20180102.csv', encoding='gbk')
test = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_test_A_20180102.csv', encoding='gbk')
train = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\train_feat_SVD.csv', encoding='gbk')
test = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\test_feat_SVD.csv', encoding='gbk')


# Save the 'Id' column
train_ID = train['id']
test_ID = test['id']

# Now drop the  'Id' colum since it's unnecessary for  the prediction process.
train.drop("id", axis = 1, inplace = True)
test.drop("id", axis = 1, inplace = True)
'''
train['性别'] = train['性别'].map({'男': 1, '女': 0})
test['性别'] = test['性别'].map({'男': 1, '女': 0})
'''
train['体检日期'] = (pd.to_datetime(train['体检日期']) - parse('2017-09-09')).dt.days
train.fillna(train.median(axis=0),inplace=True)
test['体检日期'] = (pd.to_datetime(test['体检日期']) - parse('2017-09-09')).dt.days
test.fillna(test.median(axis=0),inplace=True)


train.drop("尿素", axis = 1, inplace = True)
test.drop("尿素", axis = 1, inplace = True)
train.drop("体检日期", axis = 1, inplace = True)
test.drop("体检日期", axis = 1, inplace = True)


# Check again the data size after dropping the 'Id' variable
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


from scipy.stats import norm, skew
numeric_feats = all_data.dtypes[all_data.dtypes != "object"].index

# Check the skew of all numerical features
skewed_feats = all_data[numeric_feats].apply(lambda x: skew(x.dropna())).sort_values(ascending=False)
skewness = pd.DataFrame({'Skew': skewed_feats})


skewness = skewness[abs(skewness) > 0.75]
print("There are {} skewed numerical features to Box Cox transform".format(skewness.shape[0]))

from scipy.special import boxcox1p
skewed_features = skewness.index
lam = 0.15
for feat in skewed_features:
    # all_data[feat] += 1
    all_data[feat] = boxcox1p(all_data[feat], lam)
x = all_data.values

# all_data[skewed_features] = np.log1p(all_data[skewed_features])

train = all_data[:ntrain]
test = all_data[ntrain:]

from sklearn.base import BaseEstimator, TransformerMixin, RegressorMixin, clone
from sklearn.model_selection import KFold, cross_val_score, train_test_split
from sklearn.metrics import mean_squared_error
import xgboost as xgb

model_xgb = xgb.XGBRegressor(colsample_bytree=0.8, gamma=0.0468,
                             learning_rate=0.05, max_depth=4,
                             min_child_weight=100, n_estimators=2200,
                             reg_alpha=0.4640, reg_lambda=0.8571,
                             subsample=0.8, silent=1,
                             nthread = 8,early_stopping_rounds=100)

# origin
model_xgb = xgb.XGBRegressor(colsample_bytree=0.4603, gamma=0.0468,
                             learning_rate=0.05, max_depth=3,
                             min_child_weight=1.7817, n_estimators=2200,
                             reg_alpha=0.4640, reg_lambda=0.8571,
                             subsample=0.5213, silent=True,
                             nthread = 8)


def msle(y, y_pred):
    return mean_squared_error(y, y_pred)*0.5


def rmsle_cv(model):
    kf = KFold(5, shuffle=True, random_state=42).get_n_splits(train.values)
    rmse = 0.5*(-cross_val_score(model, train.values, y_train, scoring="neg_mean_squared_error", cv = kf))
    return rmse


score = rmsle_cv(model_xgb)
print(score)
print("Xgboost score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))

y_train_1 = (y_train)
# XGBoost
model_xgb.fit(train, y_train)
xgb_train_pred = model_xgb.predict(train)
xgb_train_pred_1 = (xgb_train_pred)
xgb_pred = (model_xgb.predict(test))
print(msle(y_train, xgb_train_pred))
print('tianchi result:  XGBoost')
print(msle(y_train_1, xgb_train_pred_1))
print(y_train_1)

print(xgb_pred[938])
xgb.plot_importance(model_xgb)
plt.rcParams['font.sans-serif'] = ['FangSong']
plt.rcParams['axes.unicode_minus'] = False
plt.show()


ensemble = xgb_pred
sub = pd.DataFrame()
sub['Id'] = test_ID
sub['Predict'] = ensemble
sub.to_csv(f"XGBoost_{datetime.datetime.now().strftime('%d-%H-%M-%S')}.csv", index=False)
