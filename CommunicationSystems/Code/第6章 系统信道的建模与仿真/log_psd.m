function [logpsd,freq,ptotal,pmax] = log_psd(x,n,ts)
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
% This function takes the n time domain samples (real or complex)
% and finds the psd by taking (fft/n)^2. The two sided spectrum is
% produced by shifting the psd; The array freq provides the appropriate
% frequency values for plotting purposes.
% By taking 10*log10(psd/max(psd)) the psd is normalized; values beow 60db 
% are set equal to -60db
%
% n must be an even number, preferably a power of  2
%
y = zeros(1,n);			% initialize y vector
%
h = waitbar(0,'For Loop in PSD Calculation');
for k=1:n
	freq(k) =(k-1-(n/2))/(n*ts);
   y(k) = x(k)*((-1.0)^k);
   waitbar(k/n)
end;
%
v = fft(y)/n;
psd = abs(v).^2;
pmax = max(psd);
ptotal = sum(psd);
logpsd = 10*log10(psd/pmax);
%
% Truncate negative values at -60 dB
%
for k =1:n
	if(logpsd(k)<-60.0)
      logpsd(k) = -60.0;
	end
end
close(h)
% End of function file.
