#invite people for the Kaggle party
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
from scipy.stats import norm
from sklearn.preprocessing import StandardScaler
from scipy import stats
import warnings

test_item = ['性别', '年龄', '*天门冬氨酸氨基转换酶', '*丙氨酸氨基转换酶', '*碱性磷酸酶', '*r-谷氨酰基转换酶',
             '*总蛋白', '白蛋白', '*球蛋白', '白球比例', '甘油三酯', '总胆固醇', '高密度脂蛋白胆固醇',
             '低密度脂蛋白胆固醇', '尿素', '肌酐', '尿酸', '白细胞计数', '红细胞计数', '血红蛋白', '红细胞压积',
             '红细胞平均体积', '乙肝表面抗原', '乙肝表面抗体', '乙肝e抗原', '乙肝e抗体', '乙肝核心抗体',
             '红细胞平均血红蛋白量', '红细胞平均血红蛋白浓度', '红细胞体积分布宽度', '血小板计数', '血小板平均体积',
             '血小板体积分布宽度', '血小板比积', '中性粒细胞%', '淋巴细胞%', '单核细胞%', '嗜酸细胞%', '嗜碱细胞%']
target_item = '血糖'
plt.rcParams['font.sans-serif'] = ['FangSong']
plt.rcParams['axes.unicode_minus'] = False
warnings.filterwarnings('ignore')

#bring in the six packs
df_train = pd.read_csv(r'train_20180117_015214.csv', encoding='gbk')
#df_train = pd.read_csv(r'H:\Programming\Python\Projects\2018\Diabetes\data\d_train_20180102.csv', encoding='gbk')

#check the decoration
print(df_train.columns)

#descriptive statistics summary
print(df_train['train'].describe())
'''
count    5642.000000
mean        5.631925
std         1.544882
min         3.070000
25%         4.920000
50%         5.290000
75%         5.767500
max        38.430000
'''

#histogram
sns.distplot(df_train['train'])
plt.show()
'''
Deviate from the normal distribution.
Have appreciable positive skewness.
Show peakedness.
'''

#skewness and kurtosis
print("Skewness: %f" % df_train['train'].skew())
print("Kurtosis: %f" % df_train['train'].kurt())
'''
Skewness: 5.551989
Kurtosis: 59.163792
'''
'''
#box plot overallqual/saleprice
var = 'stack'
print('1')
data = pd.concat([df_train['血糖'], df_train[var]], axis=1)
print('1')
f, ax = plt.subplots(figsize=(8, 6))
print('1')
fig = sns.boxplot(x=var, y='血糖', data=data)
print('1')
fig.axis(ymin=0, ymax=25)
print('1')
plt.show()

var = 'xgb'
data = pd.concat([df_train['血糖'], df_train[var]], axis=1)
plt.subplots(figsize=(8, 6))
fig = sns.boxplot(x=var, y='血糖', data=data)
fig.axis(ymin=0, ymax=15)
plt.show()


var = 'lgb'
data = pd.concat([df_train['血糖'], df_train[var]], axis=1)
plt.subplots(figsize=(8, 6))
fig = sns.boxplot(x=var, y='血糖', data=data)
fig.axis(ymin=0, ymax=15)
plt.show()'''

# correlation matrix
corrmat = df_train.corr()
plt.subplots(figsize=(12, 9))
sns.heatmap(corrmat, vmax=1.2, square=True)
plt.show()


corrmat = df_train.corr()
plt.subplots(figsize=(12, 9))
sns.heatmap(corrmat, vmax=0.6, square=True)
plt.show()


#df_train[test_item] = df_train[test_item].fillna(method='ffill')  # to be fixed

# saleprice correlation matrix
k = 10  # number of variables for heatmap
cols = corrmat.nlargest(k, 'train')['train'].index
cm = np.corrcoef(df_train[cols].values.T)
sns.set(font_scale=0.8)
hm = sns.heatmap(cm, cbar=True, annot=True, square=True, fmt='.2f',
                 annot_kws={'size': 10}, yticklabels=cols.values, xticklabels=cols.values)
plt.rcParams['font.sans-serif'] = ['FangSong']
plt.rcParams['axes.unicode_minus'] = False
plt.show()

#scatterplot
sns.set()
cols = ['train', 'stack', 'xgb', 'lgb']
sns.pairplot(df_train[cols], size = 2.5)
plt.rcParams['font.sans-serif'] = ['FangSong']
plt.rcParams['axes.unicode_minus'] = False
plt.show()


#missing data
total = df_train.isnull().sum().sort_values(ascending=False)
percent = (df_train.isnull().sum()/df_train.isnull().count()).sort_values(ascending=False)
missing_data = pd.concat([total, percent], axis=1, keys=['Total', 'Percent'])
print(missing_data.head(5))

#dealing with missing data
df_train = df_train.drop((missing_data[missing_data['Total'] > 1]).index,1)
print(df_train.isnull().sum().max())  #just checking that there's no missing data missing...

#standardizing data
saleprice_scaled = StandardScaler().fit_transform(df_train['train'][:,np.newaxis])
low_range = saleprice_scaled[saleprice_scaled[:,0].argsort()][:10]
high_range= saleprice_scaled[saleprice_scaled[:,0].argsort()][-10:]
print('outer range (low) of the distribution:')
print(low_range)
print('\nouter range (high) of the distribution:')
print(high_range)