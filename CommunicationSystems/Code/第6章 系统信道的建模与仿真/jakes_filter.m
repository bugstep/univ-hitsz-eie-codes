% File: Jakes_filter.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function [impw] = jakes_filter(fd)
% FIR implementation of the Jakes filter (128 points)
n = 512; nn = 2*n;								% nn is FFT block size
fs = 0:fd/64:fd;								% sampling frequency = 16*fd
H = zeros(1,n);									% initialize H(f)
for k=1:(n/8+1)									% psd for k=1:65
   jpsd(k)=1/((1-((fs(k))/fd)^2+eps)^0.5);
   if(jpsd(k))>1000
      jpsd(k)=1000;
   end
   H(k)=jpsd(k)^0.5;							% first 65 points of H
end
for k=1:n										% generate negative frequencies
   H(n+k) = H(n+1-k);
end
[inv,time] = linear_fft(H,nn,fd/64);		    % inverse FFT
imp = real(inv(450:577));						% middle 128 points
impw = imp.*hanning(128)';						% apply hanning window
energy = sum(impw.^2);							% compute energy
impw = impw/(energy^0.5);						% normalize
% End of function file.
