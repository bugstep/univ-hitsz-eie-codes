import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from dateutil.parser import parse
import datetime
from scipy import stats
from scipy.stats import norm, skew
from scipy.special import boxcox1p
from sklearn.linear_model import ElasticNet, Lasso
from sklearn.ensemble import GradientBoostingRegressor
from sklearn.kernel_ridge import KernelRidge
from sklearn.pipeline import make_pipeline
from sklearn.preprocessing import RobustScaler
from sklearn.base import BaseEstimator, TransformerMixin, RegressorMixin, clone
from sklearn.model_selection import KFold, cross_val_score
from sklearn.metrics import mean_squared_error
import xgboost as xgb
import lightgbm as lgb


'''location'''
train = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_train_20180102.csv', encoding='gbk')
test = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_test_A_20180102.csv', encoding='gbk')
train = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_new_train_barry.csv', encoding='gbk')
test = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_new_test_A_barry.csv', encoding='gbk')

'''select'''
# train = train.loc[train['血糖'] < 10]
train["血糖"] = np.log1p(train["血糖"])

color = sns.color_palette()
sns.set_style('darkgrid')
pd.set_option('display.float_format', lambda x: '{:.3f}'.format(x))
train_ID = train['id']
test_ID = test['id']
train.drop("id", axis=1, inplace=True)
test.drop("id", axis=1, inplace=True)
train['性别'] = train['性别'].map({'男': 1, '女': 0})
test['性别'] = test['性别'].map({'男': 1, '女': 0})
train['体检日期'] = (pd.to_datetime(train['体检日期']) - parse('2017-09-09')).dt.days
train.fillna(train.median(axis=0), inplace=True)
test['体检日期'] = (pd.to_datetime(test['体检日期']) - parse('2017-09-09')).dt.days
test.fillna(test.median(axis=0), inplace=True)
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
lam = 0.15
for feat in skewed_features:
    all_data[feat] = boxcox1p(all_data[feat], lam)
x = all_data.values
train = all_data[:ntrain]
test = all_data[ntrain:]

# Validation function
n_folds = 5


def rmsle_cv(model):
    kf = KFold(n_folds, shuffle=True, random_state=42).get_n_splits(train.values)
    rmse = 0.5 * (-cross_val_score(model, train.values, y_train, scoring="neg_mean_squared_error", cv=kf))
    return rmse


lasso = make_pipeline(RobustScaler(), Lasso(alpha=0.0005, random_state=1))

ENet = make_pipeline(RobustScaler(), ElasticNet(alpha=0.0005, l1_ratio=.9, random_state=3))

KRR = KernelRidge(alpha=0.6, kernel='polynomial', degree=2, coef0=2.5)

GBoost = GradientBoostingRegressor(n_estimators=3000, learning_rate=0.05,
                                   max_depth=4, max_features='sqrt',
                                   min_samples_leaf=15, min_samples_split=10,
                                   loss='huber', random_state=5)

# origin
model_xgb = xgb.XGBRegressor(colsample_bytree=0.4603, gamma=0.0468,
                             learning_rate=0.05, max_depth=3,
                             min_child_weight=1.7817, n_estimators=2200,
                             reg_alpha=0.4640, reg_lambda=0.8571,
                             subsample=0.5213, silent=True,
                             nthread=8)
'''
model_xgb = xgb.XGBRegressor(colsample_bytree=0.8, gamma=0.0468,
                             learning_rate=0.05, max_depth=4,
                             min_child_weight=100, n_estimators=2200,
                             reg_alpha=0.4640, reg_lambda=0.8571,
                             subsample=0.8, silent=1,
                             nthread=8,early_stopping_rounds=100)
'''

model_lgb = lgb.LGBMRegressor(objective='regression', num_leaves=5,
                              learning_rate=0.05, n_estimators=720,
                              max_bin=55, bagging_fraction=0.8,
                              bagging_freq=5, feature_fraction=0.2319,
                              feature_fraction_seed=9, bagging_seed=9,
                              min_data_in_leaf=6, min_sum_hessian_in_leaf=11, nthread=8)

score = rmsle_cv(lasso)
print("\nLasso score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))

score = rmsle_cv(ENet)
print("ElasticNet score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))

score = rmsle_cv(KRR)
print("Kernel Ridge score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))

score = rmsle_cv(GBoost)
print("Gradient Boosting score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))

score = rmsle_cv(model_xgb)
print("Xgboost score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))

score = rmsle_cv(model_lgb)
print("LGBM score: {:.4f} ({:.4f})\n".format(score.mean(), score.std()))


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


averaged_models = AveragingModels(models=(ENet, GBoost, KRR, lasso))

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


stacked_averaged_models = StackingAveragedModels(base_models=(ENet, GBoost, KRR),
                                                 meta_model=lasso)

score = rmsle_cv(stacked_averaged_models)
print("Stacking Averaged models score: {:.4f} ({:.4f})".format(score.mean(), score.std()))


def msle(y, y_pred):
    return mean_squared_error(y, y_pred) * 0.5


# StackedRegressor
stacked_averaged_models.fit(train.values, y_train)
stacked_train_pred = stacked_averaged_models.predict(train.values)

#'''
y_train_1 = np.expm1(y_train)
stacked_train_pred_1 = np.expm1(stacked_train_pred)
stacked_pred = np.expm1(stacked_averaged_models.predict(test.values))
#'''


#y_train_1 = y_train
#stacked_train_pred_1 = stacked_train_pred
#stacked_pred = stacked_averaged_models.predict(test.values)


#  print(msle(y_train, stacked_train_pred))
print('tianchi result:  StackedRegressor')
print(msle(y_train_1, stacked_train_pred_1))

# XGBoost
model_xgb.fit(train, y_train)
xgb_train_pred = model_xgb.predict(train)

#'''
xgb_train_pred_1 = np.expm1(xgb_train_pred)
xgb_pred = np.expm1(model_xgb.predict(test))
#'''

#xgb_train_pred_1 = xgb_train_pred
#xgb_pred = model_xgb.predict(test)


# print(msle(y_train, xgb_train_pred))
print('tianchi result:  XGBoost')
print(msle(y_train_1, xgb_train_pred_1))
print(y_train_1)

# LightGBM
model_lgb.fit(train, y_train)
lgb_train_pred = model_lgb.predict(train)

#'''
lgb_train_pred_1 = np.expm1(lgb_train_pred)
lgb_pred = np.expm1(model_lgb.predict(test.values))
#'''

#lgb_train_pred_1 = lgb_train_pred
#lgb_pred = model_lgb.predict(test.values)


# print(msle(y_train, lgb_train_pred))
print('tianchi result:  LightGBM')
print(msle(y_train_1, lgb_train_pred_1))

print('Ensemble MSLE score on train data:')
print(msle(y_train_1, stacked_train_pred_1 * 0.8 + xgb_train_pred_1 * 0.05 + lgb_train_pred_1 * 0.15))

ensemble = stacked_pred * 0.8 + xgb_pred * 0.05 + lgb_pred * 0.15

sub = pd.DataFrame()
sub['Predict'] = ensemble
sub['Id'] = train_ID
sub['stack'] = stacked_pred
sub['xgb'] = xgb_pred
sub['lgb'] = lgb_pred
sub.to_csv(f"predict_{datetime.datetime.now().strftime('%Y%m%d_%H%M%S')}.csv", index=False)

sub = pd.DataFrame()
sub['train'] = y_train_1
sub['Id'] = train_ID
sub['stack'] = stacked_train_pred_1
sub['xgb'] = xgb_train_pred_1
sub['lgb'] = lgb_train_pred_1
sub.to_csv(f"train_{datetime.datetime.now().strftime('%Y%m%d_%H%M%S')}.csv", index=False)
