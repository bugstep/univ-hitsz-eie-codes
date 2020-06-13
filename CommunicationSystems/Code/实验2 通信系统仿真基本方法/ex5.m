% 通信系统仿真（二）：通信系统仿真基本方法
%
% 实验五：试编写 Matlab 程序
%        对 π/4 DQPSK接收机进行仿真。
%        通过对接收机和前面发射机进行联合仿真，
%        证明接收机仿真可以正常工作。

clear all; close all;

m = 200;	bits = 2*m;				% number of symbols and bits
sps = 10;							% samples per symbol
iphase = 0;							% initial phase
order = 5;							% filter order
bw = .1:.05:.5;					% normalized filter bandwidth

% initialize vectors
data = zeros(1,bits); d = zeros(1,m); q = zeros(1,m);
dd = zeros(1,m); qq = zeros(1,m); theta = zeros(1,m);
thetaout = zeros(1,sps*m);

% set direct and quadrature bit streams
data = round(rand(1,bits));
dd = data(1:2:bits-1);
qq = data(2:2:bits);

% main programs
theta(1) = iphase;				% set initial phase
thetaout(1:sps) = theta(1)*ones(1,sps);
for k=2:m
   if dd(k) == 1
      phi_k = (2*qq(k)-1)*pi/4;
   else
      phi_k = (2*qq(k)-1)*3*pi/4;
   end   
   theta(k) = phi_k + theta(k-1);
   for i=1:sps
      j = (k-1)*sps+i;
      thetaout(j) = theta(k);
   end
end

for n = 1:length(bw)
    d = cos(thetaout);
    q = sin(thetaout);
    [b,a] = butter(order,bw(n));
    df = filter(b,a,d);
    qf = filter(b,a,q);

    dr = df; qr = qf;
    dr1=zeros(1,m); qr1=zeros(1,m);
    for i=1:m
        for j=1:sps
            dr1(i)=dr1(i)+dr((i-1)*sps+j);
            qr1(i)=qr1(i)+qr((i-1)*sps+j);
        end
    end
    dr1=dr1/sps; qr1=qr1/sps;
    
    u=zeros(1,m); v=zeros(1,m);
    u(1)=dr1(1); v(1)=qr1(1);
    for k=2:m  % 解调
          u(k)=dr1(k)*dr1(k-1)+qr1(k)*qr1(k-1);
          v(k)=qr1(k)*dr1(k-1)-dr1(k)*qr1(k-1);
    end
    
    dr2=zeros(1,m); qr2=zeros(1,m);
    for k=1:m  % 判决
        if u(k) > 0
            if v(k)>0
                dr2(k)=1;
                qr2(k)=1;
            else
                dr2(k)=1;
                qr2(k)=0;
            end
        else
            if v(k)>0
                dr2(k)=0;
                qr2(k)=1;
            else
                dr2(k)=0;
                qr2(k)=0;
            end
        end
    end
    
    data2=zeros(1,bits);
    data2(1:2:bits-1) = dr2;
    data2(2:2:bits)   = qr2;
    
    error = 0;
    for k=1:bits
        if data2(k)~=data(k)
            error = error+1;
        end
    end
    ber(n) = error/bits;
end

plot(bw, ber); grid on;
ylabel('BER'); xlabel('归一化带宽');
title('误码率与滤波器带宽的关系');
