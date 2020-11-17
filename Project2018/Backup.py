import os
import time

source = [r'H:\Programming\Python\Projects\2018\Diabetes']
target_dir = r'H:\Programming\Python\Projects\2018\backup\\'

today = target_dir + time.strftime('%Y%m%d')
now = time.strftime('%H%M%S')

comment = ''
if len(comment) == 0:
    target = today + os.sep + now + '.zip'
else:
    target = today + os.sep + now + '_' + \
            comment.replace(' ','_') + '.zip'

if not os.path.exists(today):
    os.mkdir(today)
    print('Successful created directory',today)

rar_command=r'"C:\Program Files\7-Zip\7z.exe" a %s %s' % (target,''.join(source))

if os.system(rar_command) == 0:
    print ('Successful backup to',target)
else:
    print('Backup Failed')
