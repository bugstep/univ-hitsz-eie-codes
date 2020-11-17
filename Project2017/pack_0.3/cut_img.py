from PIL import Image


d = fr'H:\Programming\Python\Projects\2018\Autopilot\pack_0.3\image_line_d'
p = fr'H:\Programming\Python\Projects\2018\Autopilot\pack_0.3\image_line_d_cut'


for directory in ['\left']:
    for i in range(1, 2000):
        read = d + directory + f'\{directory[1]}{i}.jpg'
        write = p + directory + f'\{directory[1]}{i}.jpg'
        try:
            img = Image.open(read)
            print(i)
        except:
            continue
        else:
            (x, y, w, h) = (0, 230, 640, 250)  # Set the size.
            img = img.crop((x, y, x + w, y + h))
            img.save(write)
