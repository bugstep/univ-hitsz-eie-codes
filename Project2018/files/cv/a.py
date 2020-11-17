# Isaac Li
# 1.30.2018

# ------------ import --------------------------------------------------------------------------------------------------


import function
import pandas as pd
from sklearn.metrics import mean_squared_error
import time
import numpy as np
from sklearn.model_selection import KFold


# ------------ read file -----------------------------------------------------------------------------------------------


base, power, minimum = 1.7, 1, 7.2
s = input(' s: ')
if not s:
    print(' s. ')
    train_a, test_a = function.read_file(path='sa')
    train_b, test_b = function.read_file(path='sb')
else:
    train_a, test_a = function.read_file(path='a')
    train_b, test_b = function.read_file()

train_a, train_b = train_a.sample(frac=1), train_b.sample(frac=1)
ans_path = function.settings.source_path + 'd_answer_a_20180128.csv'
ans = pd.read_csv(ans_path, encoding='gbk')  # NOTICE: add a row in file as index!


# ------------ predict a -----------------------------------------------------------------------------------------------


a = input('Part A? -> ')
if a:
    print('Done.')
else:
    print('Part A.')
    train, test = train_a, test_a
    train["血糖"] = np.log1p(train["血糖"])
    if not s:
        list_test = function.settings.all_items + ['其他胆固醇']
        train, test = function.add_column(train, test, test_item=list_test[3:])
    else:
        train, test = function.add_column(train, test)
    train, test = function.transform(train, test)

    print('\n\nStart...')
    t0, mses = time.time(), []
    train_preds, test_preds = np.zeros(train.shape[0]), np.zeros((test.shape[0], 5))
    predictors = [f for f in test.columns if f not in ['血糖']]
    kf = KFold(n_splits=5, shuffle=True, random_state=520)

    for i, (train_index, test_index) in enumerate(kf.split(train)):
        print('   .{}/5.'.format(i + 1))
        train_feat1, train_feat2 = train.iloc[train_index], train.iloc[test_index]
        gbm = function.settings.model_lgb.fit(train_feat1[predictors], train_feat1['血糖'],
                                              categorical_feature=['性别', '体检日期'])
        predict = gbm.predict(train_feat2[predictors])

        predict = np.expm1(predict)
        maximum = predict.max()
        for nnj in range(len(predict)):
            predict[nnj] = predict[nnj] * max(1, (base ** (power * ((predict[nnj] - minimum) / (maximum - minimum)))))
        predict = np.log1p(predict)

        train_preds[test_index] += predict
        mses.append(.5 * mean_squared_error(np.expm1(train_feat2['血糖']), np.expm1(predict)))

        predict = gbm.predict(test[predictors])

        predict = np.expm1(predict)
        maximum = predict.max()
        for nnj in range(len(predict)):
            predict[nnj] = predict[nnj] * max(1, (base ** (power * ((predict[nnj] - minimum) / (maximum - minimum)))))
        predict = np.log1p(predict)
        test_preds[:, i] = predict

    cv = .5 * mean_squared_error(np.expm1(train['血糖']), np.expm1(train_preds))
    print('\nFinished.\n\nSeconds -> %s\n' % str(time.time() - t0)[:8])
    for i in range(len(mses)):
        print('  %d mse -> %f' % (i + 1, mses[i]))
    print('average -> %f' % (sum(mses) / 5))
    print('   LGBM -> %f' % cv)

    # -------- test ----------------------------------------------------------------------------------------------------

    sub = np.expm1(test_preds.mean(axis=1))
    scr = .5 * mean_squared_error(ans, sub)
    print(f'\n\n  SCORE -> %f  \n\n' % scr)

    contents, notes = '', input('  notes -> ')
    if notes:
        save_file = function.settings.save_path + 'score.txt'
        try:
            with open(save_file) as f_obj:
                contents = f_obj.read()
        except FileNotFoundError:
            pass
        finally:
            with open(save_file, 'w') as f_obj:
                contents += f'%f\t{notes}\n' % scr
                f_obj.write(contents)
            print('Saved.\n')


# ------------ predict b -----------------------------------------------------------------------------------------------


b = input('Part B? -> ')
if b:
    print('Done.')
else:
    print('Part B.')
    train, test = train_b, test_b
    train["血糖"] = np.log1p(train["血糖"])
    if not s:
        list_test = function.settings.all_items + ['其他胆固醇']
        train, test = function.add_column(train, test, test_item=list_test[3:])
    else:
        train, test = function.add_column(train, test)
    train, test = function.transform(train, test)

    print('\n\nStart...')
    t0, mses = time.time(), []
    train_preds, test_preds = np.zeros(train.shape[0]), np.zeros((test.shape[0], 5))
    predictors = [f for f in test.columns if f not in ['血糖']]
    kf = KFold(n_splits=5, shuffle=True, random_state=520)

    for i, (train_index, test_index) in enumerate(kf.split(train)):
        print('   .{}/5.'.format(i + 1))
        train_feat1, train_feat2 = train.iloc[train_index], train.iloc[test_index]
        gbm = function.settings.model_lgb.fit(train_feat1[predictors], train_feat1['血糖'],
                                              categorical_feature=['性别', '体检日期'])
        predict = gbm.predict(train_feat2[predictors])

        predict = np.expm1(predict)
        maximum = predict.max()
        for nnj in range(len(predict)):
            predict[nnj] = predict[nnj] * max(1, (base ** (power * ((predict[nnj] - minimum) / (maximum - minimum)))))
        predict = np.log1p(predict)

        train_preds[test_index] += predict
        mses.append(.5 * mean_squared_error(np.expm1(train_feat2['血糖']), np.expm1(predict)))

        predict = gbm.predict(test[predictors])

        predict = np.expm1(predict)
        maximum = predict.max()
        for nnj in range(len(predict)):
            predict[nnj] = predict[nnj] * max(1, (base ** (power * ((predict[nnj] - minimum) / (maximum - minimum)))))
        predict = np.log1p(predict)
        test_preds[:, i] = predict

    cv = .5 * mean_squared_error(np.expm1(train['血糖']), np.expm1(train_preds))
    print('\nFinished.\n\nSeconds -> %s\n' % str(time.time() - t0)[:8])
    function.result('LGBM', mses, cv, test_preds)


# ------------ the end -------------------------------------------------------------------------------------------------


print('\nGood Luck.\n\n\t\tIsaac Li\n\t\t1.29.2018\n')
