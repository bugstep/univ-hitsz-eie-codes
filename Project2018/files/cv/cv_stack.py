from sklearn.model_selection import KFold as KF
import time
import numpy as np
from sklearn.linear_model import ElasticNet, Lasso
from sklearn.ensemble import GradientBoostingRegressor
from sklearn.kernel_ridge import KernelRidge
from sklearn.pipeline import make_pipeline
from sklearn.preprocessing import RobustScaler
from sklearn.base import BaseEstimator, TransformerMixin, RegressorMixin, clone
from sklearn.metrics import mean_squared_error
from sklearn.cross_validation import KFold
import function

train, test = function.read_file()
train["血糖"] = np.log1p(train["血糖"])
train, test = function.transform(train, test, fill_na=True)
pred = test.copy()
pred.drop('血糖', axis=1, inplace=True)


lasso = make_pipeline(RobustScaler(), Lasso(alpha=0.00001, random_state=1))

ENet = make_pipeline(RobustScaler(), ElasticNet(alpha=0.0005, l1_ratio=.9, random_state=3))

KRR = KernelRidge(kernel='polynomial', coef0=0, alpha=0.1, degree=2)

GBoost = GradientBoostingRegressor(n_estimators=28000, learning_rate=0.09,
                                   max_depth=6, max_features='sqrt',
                                   min_samples_leaf=15, min_samples_split=70,
                                   loss='huber', random_state=5)


class StackingAveragedModels(BaseEstimator, RegressorMixin, TransformerMixin):
    def __init__(self, base_models, meta_model, n_folds=5):
        self.base_models = base_models
        self.meta_model = meta_model
        self.n_folds = n_folds

    # We again fit the data on clones of the original models
    def fit(self, X, y):
        self.base_models_ = [list() for x in self.base_models]
        self.meta_model_ = clone(self.meta_model)
        kfold = KF(n_splits=self.n_folds, shuffle=True, random_state=156)

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

print('\n\nStart...')
t0 = time.time()
train_preds, test_preds, mses = np.zeros(train.shape[0]), np.zeros((test.shape[0], 5)), []
predictors = [f for f in test.columns if f not in ['血糖']]
kf = KFold(len(train), n_folds=5, shuffle=True, random_state=520)

for i, (train_index, test_index) in enumerate(kf):
    print('   .{}/5.'.format(i + 1))
    train_feat1, train_feat2 = train.iloc[train_index], train.iloc[test_index]
    gbm = stacked_averaged_models.fit(train_feat1[predictors].values, train_feat1['血糖'].values)
    predict = gbm.predict(train_feat2[predictors])
    train_preds[test_index] += predict
    mses.append(.5 * mean_squared_error(np.expm1(train_feat2['血糖']), np.expm1(predict)))
    test_preds[:, i] = gbm.predict(test[predictors])

cv = mean_squared_error(np.expm1(train['血糖']), np.expm1(train_preds)) * 0.5
print('\nFinished.\n\nSeconds -> %s\n' % str(time.time() - t0)[:8])
function.result('Stack', mses, cv, test_preds)
