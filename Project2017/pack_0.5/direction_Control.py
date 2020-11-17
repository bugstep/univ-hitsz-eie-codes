import socket
import time

"""
forward = "FF000400FF"
left = "FF000100FF"
right = "FF000200FF"
backward = "FF000300FF"
stop = "FF000000FF"
leftspeed_slow = "FF020125FF" #最后两位数值表示速度，范围0-50
rightspeed_slow = "FF020150FF"
"""

HOST ='192.168.1.1'
PORT = 2001

#串口连接，放置于指令发送之前
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)  #定义socket类型，网络通信，TCP
s.connect((HOST,PORT)) #要连接的IP与端口

# 直行
def Forward():
    forward = "FF000400FF"
    leftspeed = "FF020150FF"
    rightspeed = "FF020250FF"
    forward_bytes = bytes.fromhex(forward)
    leftspeed_bytes = bytes.fromhex(leftspeed)
    rightspeed_bytes = bytes.fromhex(rightspeed)
    try:
        s.sendall(leftspeed_bytes)
        s.sendall(rightspeed_bytes)
        s.sendall(forward_bytes)
    except:
        print("NO.forward")
#左转
def turnLeft():
    left = "FF000100FF"
    leftspeed = "FF020150FF"
    rightspeed = "FF020250FF"
    left_bytes = bytes.fromhex(left)
    leftspeed_bytes = bytes.fromhex(leftspeed)
    rightspeed_bytes = bytes.fromhex(rightspeed)
    try:
        s.sendall(leftspeed_bytes)
        s.sendall(rightspeed_bytes)
        s.sendall(left_bytes)
    except:
        print("NO.left")
#右转
def turnRight():
    right = "FF000200FF"
    leftspeed = "FF020150FF"
    rightspeed = "FF020250FF"
    right_bytes = bytes.fromhex(right)
    leftspeed_bytes = bytes.fromhex(leftspeed)
    rightspeed_bytes = bytes.fromhex(rightspeed)
    try:
        s.sendall(leftspeed_bytes)
        s.sendall(rightspeed_bytes)
        s.sendall(right_bytes)
    except:
        print("NO.right")
#停止
def stop():
    stop = "FF000000FF"
    stop_bytes = bytes.fromhex(stop)
    try:
        s.sendall(stop_bytes)
    except:
        print("NO.stop")

# 左前
def goLeftAhead():
    forward = "FF000400FF"
    leftspeed = "FF020120FF"
    rightspeed = "FF020250FF"
    forward_bytes = bytes.fromhex(forward)
    leftspeed_bytes = bytes.fromhex(leftspeed)
    rightspeed_bytes = bytes.fromhex(rightspeed)
    try:
        s.sendall(leftspeed_bytes)
        s.sendall(rightspeed_bytes)
        s.sendall(forward_bytes)
    except:
        print("NO.goLeftAhead")

# 右前
def goRightAhead():
    forward = "FF000400FF"
    leftspeed = "FF020150FF"
    rightspeed = "FF020220FF"
    forward_bytes = bytes.fromhex(forward)
    leftspeed_bytes = bytes.fromhex(leftspeed)
    rightspeed_bytes = bytes.fromhex(rightspeed)
    try:
        s.sendall(leftspeed_bytes)
        s.sendall(rightspeed_bytes)
        s.sendall(forward_bytes)
    except:
        print("NO.goRightAhead")






