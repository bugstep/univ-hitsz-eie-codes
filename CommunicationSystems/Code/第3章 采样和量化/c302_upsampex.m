% File: c3_upsampex.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
M = 6;						% upsample factor
h = c3_lininterp(M);		% imp response of linear interpolator
t = 0:10;					% time vector
tu = 0:60;					% upsampled time vector
x = sin(2*pi*t/10);		    % original samples
xu = c3_upsamp(x,M);		% upsampled sequence
subplot(3,1,1)
stem(t,x,'k.')
ylabel('x')
subplot(3,1,2)
stem(tu,xu,'k.')
ylabel('xu')
xi = conv(h,xu);
subplot(3,1,3)
stem(xi,'k.')
ylabel('xi')
% End of script file.