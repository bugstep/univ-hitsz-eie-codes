Ts=1/2000;  %最高频率的20倍
N=1000;     %时域频域均观察1000个点
n=1:N;      %时域信号
x=10*cos(2*pi*0.1.*n+2*sin(2*pi*0.01.*n));  %原始信号
xd=10*cos(2*sin(2*pi*0.01.*n));  %解析确定的xd和xq
xq=10*sin(2*sin(2*pi*0.01.*n));  
Xf=fft(x);     %带通信号数字频谱（0,2pi）
Xfp=[Xf(N/2+1:N),Xf(1:N/2)];  %移动频谱，将数字谱变为（-pi，pi）
for m=1:1:1000
    Xfp(m)=2*Xfp(m).*heaviside(m-500); %取正谱部分
end
Xf100=[Xfp(101:N),Xfp(1:100)];   %根据载频移动谱线
Xfp=[Xf100(N/2+1:N),Xf100(1:N/2)];  %将频域重新化为（0,2pi）

xe=ifft(Xfp);     %计算出的等效基带信号
xde1=imag(xe);   %计算出的等效基带信号实部
xd=10*cos(2*sin(2*pi*0.01.*n)); 
xq=10*sin(2*sin(2*pi*0.01.*n));
x1=xd+i*xq;
Xf1=fft(x1);
subplot(2,1,1);
plot(angle(Xf1));
subplot(2,1,2);
plot(angle(Xfp));
%plot(n,xd,n,xde1);