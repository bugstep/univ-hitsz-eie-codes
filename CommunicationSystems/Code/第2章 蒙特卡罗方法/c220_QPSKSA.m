% File: c14_QPSKSA.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
% Default parameters
% 
NN = 256;								% number of symbols
tb = 0.5;								% bit time
p0 = 1;									% power
fs = 16;                         	    % samples/symbol
ebn0db = [0:1:10];						% Eb/N0 vector
[b,a] = butter(5,1/16);					% transmitter filter parameters
%
% Establish QPSK signals
%
x = random_binary(NN,fs)+i*random_binary(NN,fs);    % QPSK signal
y1 = x;												% save signal
y2a = y1*sqrt(p0);									% scale amplitude
%
% Transmitter filter
%
y2 = filter(b,a,y2a);					% filtered signal
%
% Matched filter
%
b = ones(1,fs); b = b/fs; a = 1;		% matched filter parameters
y = filter(b,a,y2);						% matched filter output
%
% End of simulation 
%
% Use the semianalytic BER estimator. The following sets 
% up the semi analytic estimator. Find the maximum magnitude 
% of the cross correlation and the corresponding lag.
%
[cor lags] = vxcorr(x,y);
cmax = max(abs(cor));
nmax = find(abs(cor)==cmax);
timelag = lags(nmax);
theta = angle(cor(nmax));
y = y*exp(-i*theta);     				% derotate 
%
% Noise BW calibration
%
hh = impz(b,a);							% receiver impulse response
nbw = (fs/2)*sum(hh.^2);				% noise bandwidth
%
% Delay the input, and do BER estimation on the last 128 bits. 
% Use middle sample. Make sure the index does not exceed number 
% of input points. Eb should be computed at the receiver input. 
%
index = (10*fs+8:fs:(NN-10)*fs+8);
xx = x(index);
yy = y(index-timelag+1);
[n1 n2] = size(y2); ny2=n1*n2;
eb = tb*sum(sum(abs(y2).^2))/ny2;
eb = eb/2;
[peideal,pesystem] = qpsk_berest(xx,yy,ebn0db,eb,tb,nbw);
subplot(1,2,1)
yscale = 1.5*max(real(yy));
plot(yy,'+')
xlabel('Direct Sample'); ylabel('Quadrature Sample'); grid;
axis([-yscale yscale -yscale yscale])
subplot(1,2,2)
semilogy(ebn0db,peideal,ebn0db,pesystem,'ro-'); grid;
xlabel('E_b/N_0 (dB)'); ylabel('Bit Error Rate')
legend('AWGN Reference','System Under Study')
% End of script file.