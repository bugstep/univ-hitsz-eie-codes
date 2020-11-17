# Isaac Li
# 1.24.2018

import lightgbm as lgb
import xgboost as xgb

source_path = r'H:\Programming\Python\Projects\2018\Diabetes\data\\'
save_path = r'H:\Programming\Python\Projects\2018\Diabetes\files\csv\\'

path_default = ('d_answer.csv', 'd_test_B_20180128.csv')
path_a = ('d_train_20180102.csv', 'd_test_A_20180102.csv')
path_barry = ('d_new_train_barry.csv', 'd_new_test_A_barry.csv')
path_wjn = ('d_new_train_wjn.csv', 'd_new_test_A_wjn.csv')
path_svd = ('d_new_train_feat_SVD.csv', 'd_new_test_feat_SVD.csv')
path_s_a = ('d_train_s.csv', 'd_test_A_s.csv')
path_s_b = ('d_answer_s.csv', 'd_test_B_s.csv')

model_lgb = lgb.LGBMRegressor(objective='regression', num_leaves=8,
                              learning_rate=0.05, n_estimators=400,
                              max_bin=30, bagging_fraction=0.9,
                              bagging_freq=10, feature_fraction=0.5,
                              feature_fraction_seed=10, bagging_seed=10,
                              min_data_in_leaf=80, nthread=8,
                              min_sum_hessian_in_leaf=0.2)

model_xgb = xgb.XGBRegressor(colsample_bytree=0.7, gamma=0.15,
                             learning_rate=0.03, max_depth=5,
                             min_child_weight=80, n_estimators=1100,
                             reg_alpha=0.5, reg_lambda=0.7,
                             subsample=0.9, silent=True,
                             nthread=8, early_stopping_rounds=100)
'''
model_lgb = lgb.LGBMRegressor(objective='regression', num_leaves=6,
                              learning_rate=0.05, n_estimators=1000,
                              max_bin=50, bagging_fraction=0.9,
                              bagging_freq=10, feature_fraction=0.5,
                              feature_fraction_seed=10, bagging_seed=10,
                              min_data_in_leaf=70, min_sum_hessian_in_leaf=0.1, nthread=8)
'''
model_lgb = lgb.LGBMRegressor(objective='regression', num_leaves=6,
                              learning_rate=0.04, n_estimators=500,
                              max_bin=40, bagging_fraction=0.9,
                              bagging_freq=12, feature_fraction=0.5,
                              feature_fraction_seed=10, bagging_seed=10,
                              min_data_in_leaf=80, nthread=8,
                              min_sum_hessian_in_leaf=0.2)
all_items = ['id', '性别', '体检日期', '年龄', '*天门冬氨酸氨基转换酶', '*丙氨酸氨基转换酶',
             '*碱性磷酸酶', '*r-谷氨酰基转换酶', '*总蛋白', '白蛋白', '*球蛋白', '白球比例',
             '甘油三酯', '总胆固醇', '高密度脂蛋白胆固醇', '低密度脂蛋白胆固醇', '尿素', '肌酐',
             '尿酸', '乙肝表面抗原', '乙肝表面抗体', '乙肝e抗原', '乙肝e抗体', '乙肝核心抗体',
             '白细胞计数', '红细胞计数', '血红蛋白', '红细胞压积', '红细胞平均体积',
             '红细胞平均血红蛋白量', '红细胞平均血红蛋白浓度', '红细胞体积分布宽度', '血小板计数',
             '血小板平均体积', '血小板体积分布宽度', '血小板比积', '中性粒细胞%', '淋巴细胞%',
             '单核细胞%', '嗜酸细胞%', '嗜碱细胞%']

fill_data_black_list = ['血糖', "乙肝表面抗原", "乙肝表面抗体", "乙肝e抗原", "乙肝e抗体", "乙肝核心抗体", "id", "体检日期"]
fill_data_fill_targets = ['*天门冬氨酸氨基转换酶', '*丙氨酸氨基转换酶', '*碱性磷酸酶', '*r-谷氨酰基转换酶',
                          '*总蛋白', '白蛋白', '*球蛋白', '白球比例', '甘油三酯', '总胆固醇',
                          '高密度脂蛋白胆固醇', '低密度脂蛋白胆固醇', '尿素', '肌酐', '尿酸']
drop_list = ["id"]
