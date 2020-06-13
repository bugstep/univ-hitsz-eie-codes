t = 0:0.001:0.7;              
x = 10*cos(200*pi*t+2*sin(20*pi*t));
z=hilbert(x);
xl=z.*exp(-j*2*pi*100*t);
xd=real(xl);
xq=-j*(xl-xd);
subplot(2,1,1)
plot(t,xd);
subplot(2,1,2);
plot(t,xq);
