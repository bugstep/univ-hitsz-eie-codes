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

train = pd.read_csv(r'd_train_fill_avg.csv', encoding='gbk')

plt.rcParams['font.sans-serif'] = ['FangSong']
plt.rcParams['axes.unicode_minus'] = False




# Transform.
'''
train['甘油三酯'] = np.arctan(train['甘油三酯'])
train['*碱性磷酸酶'] = np.log1p(train['*碱性磷酸酶'])
train['尿素'] = np.log1p(train['尿素'])
train['*丙氨酸氨基转换酶'] = np.log1p(train['*丙氨酸氨基转换酶'])
train['高密度脂蛋白胆固醇'] = np.log1p(train['高密度脂蛋白胆固醇'])
train['低密度脂蛋白胆固醇'] = np.log1p(train['低密度脂蛋白胆固醇'])
train['白细胞计数'] = np.log1p(train['白细胞计数'])
train['*天门冬氨酸氨基转换酶'] = np.arctan(train['*天门冬氨酸氨基转换酶'])
train['*r-谷氨酰基转换酶'] = np.log1p(train['*r-谷氨酰基转换酶'])
train['*总蛋白'] = np.log1p(train['*总蛋白'])
train['白蛋白'] = np.log1p(train['白蛋白'])
train['*球蛋白'] = np.log1p(train['*球蛋白'])
train['白球比例'] = np.log1p(train['白球比例'])
train['肌酐'] = np.log1p(train['肌酐'])
train['尿酸'] = np.log1p(train['尿酸'])
train['红细胞压积'] = np.log1p(train['红细胞压积'])
train['血小板体积分布宽度'] = np.log1p(train['血小板体积分布宽度'])
train['血小板比积'] = np.log1p(train['血小板比积'])
train['单核细胞%'] = np.log1p(train['单核细胞%'])
train['嗜酸细胞%'] = np.log(train['嗜酸细胞%'] + 0.2)
train['嗜碱细胞%'] = np.log(train['嗜碱细胞%'] + 0.2)
'''


item_list = ['年龄', '甘油三酯', '总胆固醇', '*碱性磷酸酶', '尿素', '血红蛋白',
             '*丙氨酸氨基转换酶', '低密度脂蛋白胆固醇', '白细胞计数',
             '红细胞平均血红蛋白浓度','*天门冬氨酸氨基转换酶', '*r-谷氨酰基转换酶',
             '*总蛋白', '白蛋白', '*球蛋白', '白球比例', '肌酐', '尿酸', '红细胞压积',
             '红细胞平均体积', '红细胞平均血红蛋白量', '血小板计数', '血小板平均体积',
             '血小板体积分布宽度', '血小板比积', '中性粒细胞%', '淋巴细胞%', '单核细胞%',
             '嗜酸细胞%', '嗜碱细胞%']
print(len(item_list))


from scipy.special import boxcox1p
lam = 0.15
for feat in item_list:
    train[feat] = boxcox1p(train[feat], lam)


# Check the new distribution
for item_to_do in item_list:
    # train[item_to_do] = np.arctan(train[item_to_do])
    sns.distplot(train[item_to_do], fit=norm)

    # Get the fitted parameters used by the function
    (mu, sigma) = norm.fit(train[item_to_do])
    print('\n mu = {:.2f} and sigma = {:.2f}\n'.format(mu, sigma))

    # Now plot the distribution
    plt.legend(['Normal dist. ($\mu=$ {:.2f} and $\sigma=$ {:.2f} )'.format(mu, sigma)], loc='best')
    plt.ylabel('Frequency')
    plt.title('Distribution')

    # Get also the QQ-plot
    fig = plt.figure()
    res = stats.probplot(train[item_to_do], plot=plt)
    plt.show()









#check the decoration
print(train.columns)

#descriptive statistics summary
print(train['血糖'].describe())
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
sns.distplot(train['血糖'])
plt.show()
'''
Deviate from the normal distribution.
Have appreciable positive skewness.
Show peakedness.
'''

#skewness and kurtosis
print("Skewness: %f" % train['血糖'].skew())
print("Kurtosis: %f" % train['血糖'].kurt())
'''
Skewness: 5.551989
Kurtosis: 59.163792
'''

#box plot overallqual/saleprice
var = '性别'
data = pd.concat([train['血糖'], train[var]], axis=1)
f, ax = plt.subplots(figsize=(8, 6))
fig = sns.boxplot(x=var, y='血糖', data=data)
fig.axis(ymin=0, ymax=25)
plt.show()

var = '年龄'
data = pd.concat([train['血糖'], train[var]], axis=1)
plt.subplots(figsize=(8, 6))
fig = sns.boxplot(x=var, y='血糖', data=data)
fig.axis(ymin=0, ymax=15)
plt.show()

# correlation matrix
corrmat = train.corr()
plt.subplots(figsize=(12, 9))
sns.heatmap(corrmat, vmax=1.2, square=True)
plt.show()
'''
血红蛋白和红细胞压积
'''

corrmat = train.corr()
plt.subplots(figsize=(12, 9))
sns.heatmap(corrmat, vmax=0.6, square=True)
plt.show()
'''
血糖和年龄，甘油三酯
'''

