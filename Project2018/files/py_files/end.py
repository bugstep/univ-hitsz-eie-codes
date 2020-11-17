import time
import numpy as np
from sklearn.model_selection import KFold
from sklearn.metrics import mean_squared_error
import function
from scipy.special import boxcox
import pandas as pd


train, test = function.read_file(path='a')

print(train.columns)
print(train['血糖'].describe())

total = train.isnull().sum().sort_values(ascending=False)
percent = (train.isnull().sum() / train.isnull().count()).sort_values(ascending=False)
missing_data = pd.concat([total, percent], axis=1, keys=['Total', 'Percent'])
print(missing_data)