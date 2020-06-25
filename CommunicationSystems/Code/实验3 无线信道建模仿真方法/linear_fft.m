% File: linear_fft.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function [fftx,freq] = linear_fft(x,n,ts)
% This function takes n (must be even) time domain samples (real or complex)
% and finds the PSD by taking (fft/n)^2. The two sided spectrum is
% produced by shifting the PSD. The array freq provides the appropriate
% frequency values for plotting purposes.
% By taking 10*log10(psd/max(psd)) the psd is  normalized. Values below 60db 
% are set equal to -60 dB.
y = zeros(1,n);
for k=1:n
    freq(k) =(k-1-(n/2))/(n*ts);
    y(k) = x(k)*((-1.0)^(k+1));
end;
fftx = fft(y)/n;
% End of function file.