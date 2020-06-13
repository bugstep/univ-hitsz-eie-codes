% File: c13_tiv2.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
% Set default parameters
symrate = 512;
nsamples = 16;
nsymbols = 128;
bdoppler = 16;
ndelay = 8; 
n = nsymbols*nsamples;
ts = 1.0/(symrate*nsamples);
%
% Generate two uncorrelated seq of Complex Gaussian Samples
%
z1 = randn(1,n)+i*randn(1,n);
z2 = randn(1,n)+i*randn(1,n);
%
% Filter the two uncorrelated samples to generate correlated sequences
%
coefft = exp(-bdoppler*2*pi*ts);     
zz1 = zeros(1,n);
zz2 = zeros(1,n);
for k = 2:n   
   zz1(k) = z1(k)+coefft*zz1(k-1);
   zz2(k) = z2(k)+coefft*zz2(k-1);
end
%
% Generate a BPSK (random binry wavefrom and compute the output)
%
M = 2;								% binary case
x1 = mpsk_pulses(M,nsymbols,nsamples);
y1 = x1.*zz1;					 	% first output component 
y2 = x1.*zz2; 						% second output component
y(1:ndelay) = y1(1:ndelay);
y(ndelay+1:n) = y1(ndelay+1:n)+y2(1:n-ndelay);
%
% Plot the results 
%
[psdzz1,freq] = log_psd(zz1,n,ts);
figure; plot(freq,psdzz1); grid;
title('PSD of the First Component Impulse Response');
nn = 0:499;
figure; 
subplot(2,1,1)
plot(nn,imag(x1(1:500)),'k',nn,real(y1(1:500)),'k'); grid;
title('Input and the First Component of the Output');
xlabel('Sample Index')
ylabel('Signal Level')
subplot(2,1,2)
plot(nn,imag(x1(1:500)),'k',nn,real(y(1:500)),'k');grid;
title('Input and the Total Output')
xlabel('Sample Index')
ylabel('Signal Level')
% End of script file.