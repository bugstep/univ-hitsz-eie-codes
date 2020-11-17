# Isaac Li
# 1.24.2018

import pandas as pd
import numpy as np
from scipy.stats import skew
from scipy.special import boxcox1p
from dateutil.parser import parse
import warnings
import fill
import settings


def ignore_warn(*_, **__):
    """To ignore annoying warnings."""
    pass


def read_file(path=''):
    """
    Read files from path.

    :param path: kind of files
    :return: train data and test data
    """
    if path == '':
        (train_name, test_name) = settings.path_default
    elif path == 'a':
        (train_name, test_name) = settings.path_a
    elif path == 'barry':
        (train_name, test_name) = settings.path_barry
    elif path == 'svd':
        (train_name, test_name) = settings.path_svd
    elif path == 'wjn':
        (train_name, test_name) = settings.path_wjn
    elif path == 'sa':
        (train_name, test_name) = settings.path_s_a
    elif path == 'sb':
        (train_name, test_name) = settings.path_s_b
    else:
        (train_name, test_name) = settings.path_default

    train_path, test_path = settings.source_path + train_name, settings.source_path + test_name
    train = pd.read_csv(train_path, encoding='gbk')
    test = pd.read_csv(test_path, encoding='gbk')
    return train, test


def transform(train, test, lamda=0.15, date_transform=True, fill_na=False, drop_list=settings.drop_list):
    """
    Transformations.

    :param train: train data
    :param test: test data
    :param lamda: the lambda of box-cox transformation,
                  transformation will not performed if set to 0.
    :param date_transform: True: transform, False: drop.
    :param fill_na: True: fill with median, False: remains NA.
    :param drop_list: items to be dropped
    :return: transformed train data and test data
    """

    train['性别'] = train['性别'].map({'男': 1, '女': 0})
    test['性别'] = test['性别'].map({'男': 1, '女': 0})

    if date_transform:
        train['体检日期'] = (pd.to_datetime(train['体检日期']) - parse('2017-09-09')).dt.days
        test['体检日期'] = (pd.to_datetime(test['体检日期']) - parse('2017-09-09')).dt.days
    else:
        drop_list.append('体检日期')

    if fill_na:
        train.fillna(train.median(axis=0), inplace=True)
        test.fillna(test.median(axis=0), inplace=True)

    for drop in drop_list:
        train.drop(drop, axis=1, inplace=True)
        test.drop(drop, axis=1, inplace=True)

    n_train = train.shape[0]
    all_data = pd.concat((train, test)).reset_index(drop=True)
    print(f"\nSize: {train.shape}   NA: {np.any(np.isnan(all_data))}")
    numeric_feats = all_data.dtypes[all_data.dtypes != "object"].index
    skewed_feats = all_data[numeric_feats].apply(lambda x: skew(x.dropna())).sort_values(ascending=False)
    skewness = pd.DataFrame({'Skew': skewed_feats})
    skewness = skewness[abs(skewness) > 0.75]
    print("Transformed features: {}".format(skewness.shape[0]))
    skewed_features = skewness.index
    if lamda:
        for feat in skewed_features:
            if feat != '血糖':
                all_data[feat] = boxcox1p(all_data[feat], lamda)
    train, test = all_data[:n_train], all_data[n_train:]
    return train, test


def result(model, mses, cv, test_predictors):
    """
    Print the CV result and write the predicted value to file.

    :param model: model name
    :param mses: a list of mse
    :param cv: CV mse result
    :param test_predictors: predicted values
    :return: None
    """

    for i in range(len(mses)):
        print('  %d mse -> %f' % (i + 1, mses[i]))
    print('average -> %f' % (sum(mses) / 5))
    print('%7s -> %f' % (model, cv))

    output = input('\n output -> ')
    if output:
        sub = pd.DataFrame({'Predict': np.expm1(test_predictors.mean(axis=1))})
        sub.to_csv(settings.save_path + f"{model}_{output}_%.4f.csv" % cv,
                   header=None, index=False, float_format='%.4f')
    print('Done.')


def fill_data(datas, method='lgb'):
    """
    Fill the missing data.

    :param datas: a list of data frame with missing values to be filled
    :param method: filling method
    :return: a list of data with filled values
    """

    filled = []
    black_list, fill_targets = settings.fill_data_black_list, settings.fill_data_fill_targets
    fill_predictors = [f for f in datas[0].columns if f not in black_list + fill_targets]
    for data in datas:
        filled.append(fill.fill(data, method, fill_predictors, fill_targets))
    print('    NA filled.')
    return filled


def add_column(train, test, power2_a=False, power2_b=True, power3_a=False, power3_b=False, sqrt=False,
               plus=True, minus=True, by=True, divide=True, test_item=settings.all_items[3:]):
    """
    Create new columns with MAGIC!

    :param train: train data
    :param test: test data
    :param power2_a: multiply columns to the power of 2 (duplicated, precedence)
    :param power2_b: multiply columns to the power of 2 (without repetition)
    :param power3_a: multiply columns to the power of 3 (without repetition)
    :param power3_b: contains a to the 3 terms
    :param sqrt: contains sqrt a terms
    :param plus: contains a plus b terms
    :param minus: contains a minus b terms
    :param by: contains a by b terms
    :param divide: contains a divided by b terms
    :param test_item: a list of items to transform
    :return: train data and test data
    """

    def magic():
        """Make new columns."""
        if plus:
            all_data[f'{a}+{b}'] = all_data[a] + all_data[b]
        if minus:
            all_data[f'{a}-{b}'] = all_data[a] - all_data[b]
        if by:
            all_data[f'{a}*{b}'] = all_data[a] * all_data[b]
        if divide:
            all_data[f'{a}/{b}'] = all_data[a] / all_data[b]

    for item in test_item:
        maximum = max(test[item].max(), train[item].max())
        minimum = min(test[item].min(), train[item].min())
        test[item] = (test[item] - minimum) / (maximum - minimum)
        train[item] = (train[item] - minimum) / (maximum - minimum)

    n_train = train.shape[0]
    all_data = pd.concat((train, test)).reset_index(drop=True)

    if power2_a:
        power2_b = False
        for a in test_item:
            for b in test_item:
                magic()

    if power2_b:
        for i in range(len(test_item)):
            for j in range(i, len(test_item)):
                a, b = test_item[i], test_item[j]
                magic()

    if power3_a:
        power3_b = False
        for i in range(len(test_item)):
            for j in range(i, len(test_item)):
                for k in range(j, len(test_item)):
                    a, b, c = test_item[i], test_item[j], test_item[k]

                    all_data[f'{a}+{b}+{c}'] = all_data[a] + all_data[b] + all_data[c]
                    all_data[f'{a}*{b}*{c}'] = all_data[a] * all_data[b] * all_data[c]

    if power3_b:
        for item in test_item:
            all_data[f'power3{item}'] = all_data[item] ** 3

    if sqrt:
        for item in test_item:
            all_data[f'sqrt{item}'] = np.sqrt(all_data[item])

    all_data = all_data.dropna(axis='columns', thresh=100)
    all_data = all_data.drop(all_data.std()[(all_data.std() == 0)].index, axis=1)
    train, test = all_data[:n_train], all_data[n_train:]
    return train, test


warnings.warn = ignore_warn
