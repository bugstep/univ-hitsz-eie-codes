Ts=1/2000;  %���Ƶ�ʵ�20��
N=1000;     %ʱ��Ƶ����۲�1000����
n=1:N;      %ʱ���ź�
x=10*cos(2*pi*0.1.*n+2*sin(2*pi*0.01.*n));  %ԭʼ�ź�
xd=10*cos(2*sin(2*pi*0.01.*n));  %����ȷ����xd��xq
xq=10*sin(2*sin(2*pi*0.01.*n));  
Xf=fft(x);     %��ͨ�ź�����Ƶ�ף�0,2pi��
Xfp=[Xf(N/2+1:N),Xf(1:N/2)];  %�ƶ�Ƶ�ף��������ױ�Ϊ��-pi��pi��
for m=1:1:1000
    Xfp(m)=2*Xfp(m).*heaviside(m-500); %ȡ���ײ���
end
Xf100=[Xfp(101:N),Xfp(1:100)];   %������Ƶ�ƶ�����
Xfp=[Xf100(N/2+1:N),Xf100(1:N/2)];  %��Ƶ�����»�Ϊ��0,2pi��

xe=ifft(Xfp);     %������ĵ�Ч�����ź�
xde1=imag(xe);   %������ĵ�Ч�����ź�ʵ��
xd=10*cos(2*sin(2*pi*0.01.*n)); 
xq=10*sin(2*sin(2*pi*0.01.*n));
x1=xd+i*xq;
Xf1=fft(x1);
subplot(2,1,1);
plot(angle(Xf1));
subplot(2,1,2);
plot(angle(Xfp));
%plot(n,xd,n,xde1);