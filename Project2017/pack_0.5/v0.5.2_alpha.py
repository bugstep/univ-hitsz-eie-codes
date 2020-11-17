import PIL.Image as Image


def color_detection(img, rgb_lower, rgb_upper):
    img = Image.open(img)
    r_l, g_l, b_l = rgb_lower
    r_u, g_u, b_u = rgb_upper

    w, h = img.size
    data = img.getdata()

    c = 0
    for _, rgb in enumerate(data):
        # print(rgb)
        r, g, b = rgb
        if r_l < r < r_u and g_l < g < g_u and b_l < b < b_u:
            c += 1

    if c > w * h * 0.01:
        flag = True
    else:
        flag = False
    return flag


print(
    color_detection('x.jpg', [130, 60, 20], [170, 90, 40]),
    color_detection('l.bmp', [130, 60, 20], [170, 90, 40]),
)
