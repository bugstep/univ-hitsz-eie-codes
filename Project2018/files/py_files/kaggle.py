# import some necessary libraries

import time
import datetime

import numpy as np                                                    # linear algebra
import pandas as pd                                                   # data processing, CSV file I/O (e.g. pd.read_csv)
import matplotlib.pyplot as plt                                       # Matlab-style plotting
import seaborn as sns
color = sns.color_palette()
sns.set_style('darkgrid')
import warnings


def ignore_warn(*args, **kwargs):
    pass


warnings.warn = ignore_warn                                           # ignore annoying warning (sklearn and seaborn)

from scipy import stats
from scipy.stats import norm, skew                                    # for some statistics

pd.set_option('display.float_format', lambda x: '{:.3f}'.format(x))   # Limiting floats output to 3 decimal points


# Now let's import and put the train and test datasets in pandas dataframe

train = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_train_20180102.csv', encoding='gbk')
test = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_test_A_20180102.csv', encoding='gbk')

# print(train.head(5))

# check the numbers of samples and features
print("The train data size before dropping Id feature is : {} ".format(train.shape))
print("The test data size before dropping Id feature is : {} ".format(test.shape))


test_item = ['性别', '年龄', '*天门冬氨酸氨基转换酶', '*丙氨酸氨基转换酶', '*碱性磷酸酶', '*r-谷氨酰基转换酶',
             '*总蛋白', '白蛋白', '*球蛋白', '白球比例', '甘油三酯', '总胆固醇', '高密度脂蛋白胆固醇',
             '低密度脂蛋白胆固醇', '尿素', '肌酐', '尿酸', '白细胞计数', '红细胞计数', '血红蛋白', '红细胞压积',
             '红细胞平均体积', '乙肝表面抗原', '乙肝表面抗体', '乙肝e抗原', '乙肝e抗体', '乙肝核心抗体',
             '红细胞平均血红蛋白量', '红细胞平均血红蛋白浓度', '红细胞体积分布宽度', '血小板计数', '血小板平均体积',
             '血小板体积分布宽度', '血小板比积', '中性粒细胞%', '淋巴细胞%', '单核细胞%', '嗜酸细胞%', '嗜碱细胞%']
missing_item = []
target_item = '血糖'
plt.rcParams['font.sans-serif'] = ['FangSong']
plt.rcParams['axes.unicode_minus'] = False


# Save the 'Id' column
train_ID = train['id']
test_ID = test['id']

# Now drop the  'Id' colum since it's unnecessary for  the prediction process.
train.drop("id", axis = 1, inplace = True)
test.drop("id", axis = 1, inplace = True)
train.drop("体检日期", axis = 1, inplace = True)
test.drop("体检日期", axis = 1, inplace = True)
for missing in missing_item:
    train.drop(missing, axis=1, inplace=True)
    test.drop(missing, axis=1, inplace=True)

train['性别'] = train['性别'].map({'男': 1, '女': -1})
# check again the data size after dropping the 'Id' variable
print("\nThe train data size after dropping Id feature is : {} ".format(train.shape))
print("The test data size after dropping Id feature is : {} ".format(test.shape))

#train=train.loc[train['血糖'] >8]
'''
i = 0
plt.rcParams['font.sans-serif'] = ['FangSong']
for item in test_item:
    fig, ax = plt.subplots()
    ax.scatter(x = train[item], y = train[target_item])
    plt.ylabel(target_item, fontsize=13)
    plt.xlabel(item + f' {i}', fontsize=13)
    # plt.show()
    name = item
    if item[0] == '*':
        name = name[1:]
    name = str(i) + ' ' + name
    i += 1
    plt.show()
'''
"""
sns.distplot(train[target_item] , fit=norm)

# Get the fitted parameters used by the function
(mu, sigma) = norm.fit(train[target_item])
print( '\n mu = {:.2f} and sigma = {:.2f}\n'.format(mu, sigma))

#Now plot the distribution
plt.legend(['Normal dist. ($\mu=$ {:.2f} and $\sigma=$ {:.2f} )'.format(mu, sigma)], loc='best')
plt.ylabel('Frequency')
plt.title('Distribution')

#Get also the QQ-plot
fig = plt.figure()
res = stats.probplot(train[target_item], plot=plt)
plt.show()
"""

"""
修正数据使得它符合线性性要求：对响应变量或者预测变量或者对于两者同时使用合适的非线性变换
The target variable is right skewed. As (linear) models love normally distributed data, 
we need to transform this variable and make it more normally distributed.
"""

from scipy.special import boxcox
def invboxcox(y,ld):
    if ld == 0:
        return(np.exp(y))
    else:
        return(np.exp(np.log(ld*y+1)/ld))
y = train.血糖.values
print(y)
# We use the numpy function log1p which  applies log(1+x) to all elements of the column
# train[target_item] = np.add(10**15 * train[target_item], 0)
# train[target_item] = np.log1p(train[target_item])
# train[target_item] = np.sin(0.177*train[target_item]-0.08)  # sin不能一一对应？
# train[target_item] = np.arctan(train[target_item] - 3.17)
# train[target_item] = np.log1p(train[target_item])
# train[target_item] = np.arctan(0.6 * train[target_item] - 1.6)   # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# train[target_item] = np.log1p(train[target_item]**-2)
# train[target_item] = np.arctan(0.4 * train[target_item] - .8)
train["血糖"] = boxcox(train["血糖"], 0.15)

"""
for i in range(len(train[target_item])):
    pass
"""

'''
i = 0
for item in test_item:
    fig, ax = plt.subplots()
    ax.scatter(x = train[item], y = train[target_item])
    plt.ylabel(target_item, fontsize=13)
    plt.xlabel(item + f' {i}', fontsize=13)
    # plt.show()
    name = item
    if item[0] == '*':
        name = name[1:]
    name = str(i) + ' ' + name + 'b'
    i += 1
    plt.show()
'''
# Check the new distribution
sns.distplot(train[target_item], fit=norm)

# Get the fitted parameters used by the function
(mu, sigma) = norm.fit(train[target_item])
print('\n mu = {:.2f} and sigma = {:.2f}\n'.format(mu, sigma))

# Now plot the distribution
plt.legend(['Normal dist. ($\mu=$ {:.2f} and $\sigma=$ {:.2f} )'.format(mu, sigma)], loc='best')
plt.ylabel('Frequency')
plt.title('Distribution')

# Get also the QQ-plot
fig = plt.figure()
res = stats.probplot(train[target_item], plot=plt)
plt.show()

ntrain = train.shape[0]
ntest = test.shape[0]
y_train = train.血糖.values

all_data = pd.concat((train, test)).reset_index(drop=True)
all_data.drop([target_item], axis=1, inplace=True)
print("all_data size is : {}".format(all_data.shape))

all_data_na = (all_data.isnull().sum() / len(all_data)) * 100
all_data_na = all_data_na.drop(all_data_na[all_data_na == 0].index).sort_values(ascending=False)[:30]
missing_data = pd.DataFrame({'Missing Ratio': all_data_na})
print(missing_data.head(20))

f, ax = plt.subplots(figsize=(15, 12))
plt.xticks(rotation='90')
sns.barplot(x=all_data_na.index, y=all_data_na)
plt.xlabel('Features', fontsize=15)
plt.ylabel('Percent of missing values', fontsize=15)
plt.title('Percent missing data by feature', fontsize=15)
# plt.show()


# Correlation map to see how features are correlated with SalePrice
corrmat = train.corr()
plt.subplots(figsize=(12,9))
sns.heatmap(corrmat, vmax=0.9, square=True)
plt.show()

for item in test_item:
    all_data[item] = all_data[item].fillna("None")
#Check remaining missing values if any
all_data_na = (all_data.isnull().sum() / len(all_data)) * 100
all_data_na = all_data_na.drop(all_data_na[all_data_na == 0].index).sort_values(ascending=False)
missing_data = pd.DataFrame({'Missing Ratio' :all_data_na})
print(missing_data.head())

from sklearn.preprocessing import LabelEncoder
# process columns, apply LabelEncoder to categorical features
for c in test_item:
    lbl = LabelEncoder()
    lbl.fit(list(all_data[c].values))
    all_data[c] = lbl.transform(list(all_data[c].values))

# shape
print('Shape all_data: {}'.format(all_data.shape))

numeric_feats = all_data.dtypes[all_data.dtypes != "object"].index

# Check the skew of all numerical features
skewed_feats = all_data[numeric_feats].apply(lambda x: skew(x.dropna())).sort_values(ascending=False)
print("\nSkew in numerical features: \n")
skewness = pd.DataFrame({'Skew' :skewed_feats})
print(skewness.head(10))


skewness = skewness[abs(skewness) > 0.75]
print("There are {} skewed numerical features to Box Cox transform".format(skewness.shape[0]))

from scipy.special import boxcox1p

skewed_features = skewness.index
lam = 0.15
for feat in skewed_features:
    # all_data[feat] += 1
    all_data[feat] = boxcox1p(all_data[feat], lam)

# all_data[skewed_features] = np.log1p(all_data[skewed_features])

all_data = pd.get_dummies(all_data)
print(all_data.shape)

train = all_data[:ntrain]
test = all_data[ntrain:]


from sklearn.linear_model import ElasticNet, Lasso,  BayesianRidge, LassoLarsIC, LassoCV
from sklearn.ensemble import RandomForestRegressor,  GradientBoostingRegressor
from sklearn.kernel_ridge import KernelRidge
from sklearn.pipeline import make_pipeline
from sklearn.preprocessing import RobustScaler
from sklearn.base import BaseEstimator, TransformerMixin, RegressorMixin, clone
from sklearn.model_selection import KFold, cross_val_score, train_test_split
from sklearn.metrics import mean_squared_error
import xgboost as xgb
import lightgbm as lgb




def rmsle(y, y_pred):
    return 0.5*(mean_squared_error(y, y_pred))



# Validation function
n_folds = 5


def rmsle_cv(model):
    kf = KFold(n_folds, shuffle=True, random_state=42).get_n_splits(train.values)
    rmse = np.sqrt(-cross_val_score(model, train.values, y_train, scoring="neg_mean_squared_error", cv = kf))
    return(rmse)


lasso = make_pipeline(RobustScaler(),
                      Lasso(alpha=0.001, random_state=1, tol=0.01, warm_start=True))

ENet = make_pipeline(RobustScaler(), ElasticNet(alpha=0.0005, l1_ratio=.9, random_state=3))

KRR = KernelRidge(alpha=0.6, kernel='polynomial', degree=2, coef0=2.5)

GBoost = GradientBoostingRegressor(n_estimators=3000, learning_rate=0.05,
                                   max_depth=4, max_features='sqrt',
                                   min_samples_leaf=15, min_samples_split=10,
                                   loss='huber', random_state =5)

model_xgb = xgb.XGBRegressor(alpha=9.6, colsample_bytree=1, gamma=9.4,
                             max_depth=7, min_child_weight=20, subsample=0.9)

model_lgb = lgb.LGBMRegressor(objective='regression',num_leaves=5,
                              learning_rate=0.05, n_estimators=720,
                              max_bin = 55, bagging_fraction = 0.8,
                              bagging_freq = 5, feature_fraction = 0.2319,
                              feature_fraction_seed=9, bagging_seed=9,
                              min_data_in_leaf =6, min_sum_hessian_in_leaf = 11)

score = rmsle_cv(lasso)
print(score)
print("\nLasso score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))
score = rmsle_cv(ENet)
print(score)
print("ElasticNet score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))
score = rmsle_cv(KRR)
print("Kernel Ridge score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))
score = rmsle_cv(GBoost)
print("Gradient Boosting score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))
score = rmsle_cv(model_xgb)
print("Xgboost score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))
score = rmsle_cv(model_lgb)
print("LGBM score: {:.4f} ({:.4f})\n" .format(score.mean(), score.std()))


class AveragingModels(BaseEstimator, RegressorMixin, TransformerMixin):
    def __init__(self, models):
        self.models = models

    # we define clones of the original models to fit the data in
    def fit(self, X, y):
        self.models_ = [clone(x) for x in self.models]

        # Train cloned base models
        for model in self.models_:
            model.fit(X, y)

        return self

    # Now we do the predictions for cloned models and average them
    def predict(self, X):
        predictions = np.column_stack([
            model.predict(X) for model in self.models_
        ])
        return np.mean(predictions, axis=1)


averaged_models = AveragingModels(models = (ENet, GBoost, KRR, lasso))

score = rmsle_cv(averaged_models)
print("Averaged base models score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))


class StackingAveragedModels(BaseEstimator, RegressorMixin, TransformerMixin):
    def __init__(self, base_models, meta_model, n_folds=5):
        self.base_models = base_models
        self.meta_model = meta_model
        self.n_folds = n_folds

    # We again fit the data on clones of the original models
    def fit(self, X, y):
        self.base_models_ = [list() for x in self.base_models]
        self.meta_model_ = clone(self.meta_model)
        kfold = KFold(n_splits=self.n_folds, shuffle=True, random_state=156)

        # Train cloned base models then create out-of-fold predictions
        # that are needed to train the cloned meta-model
        out_of_fold_predictions = np.zeros((X.shape[0], len(self.base_models)))
        for i, model in enumerate(self.base_models):
            for train_index, holdout_index in kfold.split(X, y):
                instance = clone(model)
                self.base_models_[i].append(instance)
                instance.fit(X[train_index], y[train_index])
                y_pred = instance.predict(X[holdout_index])
                out_of_fold_predictions[holdout_index, i] = y_pred

        # Now train the cloned  meta-model using the out-of-fold predictions as new feature
        self.meta_model_.fit(out_of_fold_predictions, y)
        return self

    # Do the predictions of all base models on the test data and use the averaged predictions as
    # meta-features for the final prediction which is done by the meta-model
    def predict(self, X):
        meta_features = np.column_stack([
            np.column_stack([model.predict(X) for model in base_models]).mean(axis=1)
            for base_models in self.base_models_])
        return self.meta_model_.predict(meta_features)

stacked_averaged_models = StackingAveragedModels(base_models = (ENet, GBoost, KRR),
                                                 meta_model = lasso)

score = rmsle_cv(stacked_averaged_models)
print("Stacking Averaged models score: {:.4f} ({:.4f})".format(score.mean(), score.std()))









stacked_averaged_models.fit(train.values, y_train)
stacked_train_pred = stacked_averaged_models.predict(train.values)
model_xgb.fit(train, y_train)
xgb_train_pred = model_xgb.predict(train)
model_lgb.fit(train, y_train)
lgb_train_pred = model_lgb.predict(train)



'''
train[target_item] = np.log1p(train[target_item])
'''
stacked_pred = np.expm1(stacked_averaged_models.predict(test.values))
xgb_pred = np.expm1(model_xgb.predict(test))
lgb_pred = np.expm1(model_lgb.predict(test.values))


"""
'''
train[target_item] = np.arctan(train[target_item] -3.17)
'''
stacked_pred = np.add(np.tan(stacked_averaged_models.predict(test.values)), 3.17)
xgb_pred = np.add(np.tan(model_xgb.predict(test)), 3.17)
lgb_pred = np.add(np.tan(model_lgb.predict(test.values)), 3.17)
"""

"""
'''
train[target_item] = np.sin(0.177*train[target_item]-0.08)
'''
stacked_pred = np.add(np.arcsin(stacked_averaged_models.predict(test.values)), 0.08)
xgb_pred = np.add(np.arcsin(model_xgb.predict(test)), 0.08)
lgb_pred = np.add(np.arcsin(model_lgb.predict(test.values)), 0.08)
"""
"""
'''
train[target_item] = np.arctan(0.6 * train[target_item] - 1.6)
'''
stacked_pred = np.add(np.tan(stacked_averaged_models.predict(test.values))/0.6, 1.6/0.6)
xgb_pred = np.add(np.tan(model_xgb.predict(test))/0.6, 1.6/0.6)
lgb_pred = np.add(np.tan(model_lgb.predict(test.values))/0.6, 1.6/0.6)
"""

print(rmsle(y, stacked_train_pred))
print(rmsle(y, xgb_train_pred))
print(rmsle(y, lgb_train_pred))

'''RMSE on the entire Train data when averaging'''

print('RMSLE score on train data:')
print(rmsle(y_train, stacked_train_pred*0.70 + xgb_train_pred*0.15 + lgb_train_pred*0.15))

ensemble = stacked_pred*0.70 + xgb_pred*0.15 + lgb_pred*0.15

sub = pd.DataFrame()
sub['Id'] = test_ID
sub['Predict'] = ensemble
sub.to_csv(r'submission{}.csv'.format(datetime.datetime.now().strftime('%Y%m%d_%H%M%S')), index=False)
