
import numpy as np
import cv2

cap = cv2.VideoCapture("http://192.168.1.1:8080/?action=stream")

while(True):
    #一帧一帧捕获视频 
    #ret的值为True 或 False 。frame 表示当前截取一帧的图片
    ret, frame = cap.read()

    #在这里，我们在每一帧上操作
    #gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    frame = cv2.flip(frame,1)
    #显示帧的结果
    cv2.imshow('frame',frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

#当一切结束时，释放资源
cap.release()
cv2.destroyAllWindows()

































