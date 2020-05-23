% File: c10_PSKSA.m 
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
NN = 256;									% number of symbols
tb = 1;										% bit file
p0 = 1;										% power
fs = 16;                         		    % samples/symbol
ebn0db = [0:1:8];							% Eb/No vector in dB
[bt,at] = butter(5,2/fs);					% transmitter filter parameters
x = random_binary(NN,fs);   				% establish PSK signal
y1 = x;										% save signal
y2a = y1*sqrt(p0);							% scale amplitude
y2 = filter(bt,at,y2a);						% transmitter output
br = ones(1,fs); br = br/fs; ar = 1;	    % matched filter parameters
y = filter(br,ar,y2);						% matched filter output
%
% End of simulation.  
%
% The following code sets up the semianalytic estimator. Find the 
% maximum magnitude of the cross correlation and the corresponding lag.
%
[cor lags] = vxcorr(x,y);					% compute crosscorrelation
[cmax nmax] = max(abs(cor));				% maximum of crosscorrelation
timelag = lags(nmax);						% lag at max crosscorrelation
theta = angle(cor(nmax));					% determine angle
y = y*exp(-i*theta);     					% derotate 
%
% Noise BW calibration.
%
hh = impz(br,ar);							% receiver impulse response
nbw = (fs/2)*sum(hh.^2);					% noise bandwidth
%
% Delay the input and do BER estimation on the NN-20+1 128 bits. 
% Use middle sample. Make sure the index does not exceed number 
% of input points. Eb should be computed at the receiver input. 
%
index = (10*fs+8:fs:(NN-10)*fs+8);
xx = x(index);
yy = y(index-timelag+1);
eb = tb*sum(abs(y2).^2)/length(y2);
eb = eb/2;
[peideal,pesystem] = psk_berest(xx,yy,ebn0db,eb,tb,nbw);
semilogy(ebn0db,pesystem,'ro-',ebn0db,peideal); grid;
xlabel('E_b/N_0 (dB)'); ylabel('Bit Error Rate')
legend('System Under Study','AWGN Reference',0)
% End of script file.
