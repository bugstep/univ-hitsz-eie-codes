% File: linear_psd.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function [psd,freq,ptotal,pmax] = linear_psd(x,n,ts)
% This function takes the n time domain samples (real or complex)
% and finds the psd by taking (fft/n)^2. The two sided spectrum is
% produced by shifting the psd.
% NOTE: n must be an even number, preferably a power of  2.
for k=1:n
   y(k) = 0.;
end
for k=1:n
	freq (k) =( k-1-(n/2))/(n*ts);
    y(k) = x(k)*((-1.0)^k);
end
v = fft(y)/n; psd = abs (v).^2;
pmax = max(psd); ptotal = sum(psd);
% End of function file.

