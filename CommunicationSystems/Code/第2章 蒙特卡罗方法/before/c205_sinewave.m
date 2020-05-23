% File: c7_sinewave.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
f = 1;											% frequency of sinusoid
fs = 100;										% sampling frequency
t = (0:200)/fs;									% time vector
for i=1:20
   x(:,i) = cos(2*pi*f*t+rand(1)*2*pi)';
   y(:,i) = cos(2*pi*f*t+rand(1)*pi/2)';
   z(:,i) = (1+rand(1))*cos(2*pi*f*t)';
end
subplot(3,1,1); plot(t,x,'k'); ylabel('x(t)')
subplot(3,1,2); plot(t,y,'k'); ylabel('y(t)')
subplot(3,1,3); plot(t,z,'k'); ylabel('z(t)')
% End of script file.
