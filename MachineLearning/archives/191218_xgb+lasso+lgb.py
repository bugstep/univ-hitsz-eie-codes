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

XGB = np.expm1(xgb.predict(test))

import os
import sys
import datetime
import numpy as np
import pandas as pd
import lightgbm
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

lgb = lightgbm.LGBMRegressor(objective='regression',
                             num_leaves=4,
                             learning_rate=0.01,
                             n_estimators=5000,
                             max_bin=200,
                             bagging_fraction=0.75,
                             bagging_freq=5,
                             bagging_seed=7,
                             feature_fraction=0.2,
                             feature_fraction_seed=7,
                             verbose=-1,
                             )

n_folds = 5
kf = KFold(n_folds, shuffle=True, random_state=42).get_n_splits(train.values)
score = np.sqrt(-cross_val_score(lgb, train.values, y_train, scoring="neg_mean_squared_error", cv=kf))
lgb.fit(train, y_train)
y_train_pred = np.expm1(lgb.predict(train))

print(f"lightgbm score: {score.mean():.4f} ({score.std():.4f})")
print("Train Set: ", np.sqrt(mean_squared_error(y_train, np.log1p(y_train_pred))))

LGB = np.expm1(lgb.predict(test))

import os
import sys
import datetime
import numpy as np
import pandas as pd
from sklearn.linear_model import ElasticNet, Lasso, BayesianRidge, LassoLarsIC
from sklearn.pipeline import make_pipeline
from sklearn.preprocessing import RobustScaler
from sklearn.model_selection import KFold, cross_val_score, train_test_split

train = pd.read_csv('../_source/train.csv')
test = pd.read_csv('../_source/test.csv')

train_ID = train['Id']
test_ID = test['Id']

# Now drop the  'Id' colum since it's unnecessary for  the prediction process.
train.drop("Id", axis=1, inplace=True)
test.drop("Id", axis=1, inplace=True)
# Deleting outliers
train = train.drop(train[(train['GrLivArea'] > 4000) & (train['SalePrice'] < 300000)].index)
train["SalePrice"] = np.log1p(train["SalePrice"])
ntrain = train.shape[0]
ntest = test.shape[0]
y_train = train.SalePrice.values
all_data = pd.concat((train, test), sort=True).reset_index(drop=True)
all_data.drop(['SalePrice'], axis=1, inplace=True)
# 补全缺失的属性，根据实际情况补None或特定值
all_data["PoolQC"] = all_data["PoolQC"].fillna("None")
all_data["MiscFeature"] = all_data["MiscFeature"].fillna("None")
all_data["Alley"] = all_data["Alley"].fillna("None")
all_data["Fence"] = all_data["Fence"].fillna("None")
all_data["FireplaceQu"] = all_data["FireplaceQu"].fillna("None")
all_data["LotFrontage"] = all_data.groupby("Neighborhood")["LotFrontage"].transform(
    lambda x: x.fillna(x.median()))
for col in ('GarageType', 'GarageFinish', 'GarageQual', 'GarageCond'):
    all_data[col] = all_data[col].fillna('None')
for col in ('GarageYrBlt', 'GarageArea', 'GarageCars'):
    all_data[col] = all_data[col].fillna(0)
for col in ('BsmtFinSF1', 'BsmtFinSF2', 'BsmtUnfSF', 'TotalBsmtSF', 'BsmtFullBath', 'BsmtHalfBath'):
    all_data[col] = all_data[col].fillna(0)
for col in ('BsmtQual', 'BsmtCond', 'BsmtExposure', 'BsmtFinType1', 'BsmtFinType2'):
    all_data[col] = all_data[col].fillna('None')
all_data["MasVnrType"] = all_data["MasVnrType"].fillna("None")
all_data["MasVnrArea"] = all_data["MasVnrArea"].fillna(0)
all_data['MSZoning'] = all_data['MSZoning'].fillna(all_data['MSZoning'].mode()[0])
all_data = all_data.drop(['Utilities'], axis=1)
all_data["Functional"] = all_data["Functional"].fillna("Typ")
all_data['Electrical'] = all_data['Electrical'].fillna(all_data['Electrical'].mode()[0])
all_data['KitchenQual'] = all_data['KitchenQual'].fillna(all_data['KitchenQual'].mode()[0])
all_data['Exterior1st'] = all_data['Exterior1st'].fillna(all_data['Exterior1st'].mode()[0])
all_data['Exterior2nd'] = all_data['Exterior2nd'].fillna(all_data['Exterior2nd'].mode()[0])
all_data['SaleType'] = all_data['SaleType'].fillna(all_data['SaleType'].mode()[0])
all_data['MSSubClass'] = all_data['MSSubClass'].fillna("None")

# 将实际表示类别的数字类型的属性转为字符类型
# MSSubClass=The building class
all_data['MSSubClass'] = all_data['MSSubClass'].apply(str)

# Changing OverallCond into a categorical variable
all_data['OverallCond'] = all_data['OverallCond'].astype(str)

# Year and month sold are transformed into categorical features.
all_data['YrSold'] = all_data['YrSold'].astype(str)
all_data['MoSold'] = all_data['MoSold'].astype(str)
# 对于属性值具有对比关系的属性，使用标签编码
from sklearn.preprocessing import LabelEncoder

cols = ('FireplaceQu', 'BsmtQual', 'BsmtCond', 'GarageQual', 'GarageCond',
        'ExterQual', 'ExterCond', 'HeatingQC', 'PoolQC', 'KitchenQual', 'BsmtFinType1',
        'BsmtFinType2', 'Functional', 'Fence', 'BsmtExposure', 'GarageFinish', 'LandSlope',
        'LotShape', 'PavedDrive', 'Street', 'Alley', 'CentralAir', 'MSSubClass', 'OverallCond',
        'YrSold', 'MoSold')
# process columns, apply LabelEncoder to categorical features
for c in cols:
    lbl = LabelEncoder()
    lbl.fit(list(all_data[c].values))
    all_data[c] = lbl.transform(list(all_data[c].values))

# shape
# print('Shape all_data: {}'.format(all_data.shape))

# Adding total sqfootage feature 增加总面积属性
all_data['TotalSF'] = all_data['TotalBsmtSF'] + all_data['1stFlrSF'] + all_data['2ndFlrSF']

from scipy.stats import norm, skew

numeric_feats = all_data.dtypes[all_data.dtypes != "object"].index

# Check the skew of all numerical features
skewed_feats = all_data[numeric_feats].apply(lambda x: skew(x.dropna())).sort_values(ascending=False)
skewness = pd.DataFrame({'Skew': skewed_feats})
skewness.head(10)
skewness = skewness[abs(skewness) > 0.75]

from scipy.special import boxcox1p

skewed_features = skewness.index
lam = 0.15
for feat in skewed_features:
    # all_data[feat] += 1
    all_data[feat] = boxcox1p(all_data[feat], lam)
all_data = pd.get_dummies(all_data)
# print(all_data.shape)

train = all_data[:ntrain]
test = all_data[ntrain:]

# Validation function
n_folds = 5


def rmsle_cv(model):
    kf = KFold(n_folds, shuffle=True, random_state=42).get_n_splits(train.values)
    rmse = np.sqrt(-cross_val_score(model, train.values, y_train, scoring="neg_mean_squared_error", cv=kf))
    return (rmse)


lasso = make_pipeline(RobustScaler(), Lasso(alpha=0.0005, random_state=1))
score = rmsle_cv(lasso)
print("Lasso score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))

reg = lasso.fit(train, y_train)
predictions = lasso.predict(test)

LASSO = np.expm1(predictions)

submission = pd.DataFrame()
submission['Id'] = test_ID
submission['SalePrice'] = .2 * XGB + .5 * LASSO + .3 * LGB

submission.head()
submission.to_csv(r'../submissions/{}_{}.csv'.format(
    os.path.basename(sys.argv[0])[:-3],
    datetime.datetime.now().strftime('%m%d_%H%M')), index=False)
