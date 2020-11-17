import os


d = fr'H:\Programming\Python\Projects\2018\Autopilot\pack0.3\image_line_d\\'

for directory in ['straight', 'left', 'right']:
    path = d + directory + '\\'
    count = 1
    for file in os.listdir(path):
        os.rename(os.path.join(path, file), os.path.join(path, directory[0] + str(count) + ".jpg"))
        count += 1
