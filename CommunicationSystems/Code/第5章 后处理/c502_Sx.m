N=1024;
fs=1000;
t=(0:N-1)/fs;
fai=random('unif',0,1,1,2)*2*pi;
xn=cos(2*pi*30*t+fai(1))+3*cos(2*pi*100*t+fai(2))+randn(1,N);
Sx=abs(fft(xn)).^2/N;
f=(0:N/2-1)*fs/N
plot(f,10*log10(Sx(1:N/2)));