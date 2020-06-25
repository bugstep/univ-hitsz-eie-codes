% 通信系统仿真（三）：无线信道建模仿真方法
%
% 实验四：对下面三种信道情况：
%             情况一：有积分—清除接收机的 AWGN 信道；
%             情况二：瑞利衰落信道加 AWGN 信道，无时延；
%             情况三：例题 7 中由于多普勒原因引起的衰落信道；
%        对比三种信道情况下 QPSK 系统，进行 BER 对 Eb/N0 的性能比较。

%
% Generate tapweights. 
%
fd = 100; impw = jakes_filter(fd);
%
% Generate tap input processes and Run through doppler filter.
%
x1 = randn(1,256)+1i*randn(1,256); y1 = filter(impw,1,x1);
x2 = randn(1,256)+1i*randn(1,256); y2 = filter(impw,1,x2);
%
% Discard the first 128 points since the FIR filter transient.
% Scale them for power and Interpolate weight values.
% Interpolation factor=100 for the QPSK sampling rate of 160000/sec.
%
z1(1:128) = y1(129:256); z2(1:128) = y2(129:256);
z2 = sqrt(0.5)*z2; m = 100;
tw1 = linear_interp(z1,m); tw2 = linear_interp(z2,m);
%
% Generate QPSK signal and filter it.
%
nbits = 512; 
fs = 16; 
ntotal = 8192;
tb = 1/160000;
EbN0db = (1:2:14);
qpsk_sig = random_binary(nbits,fs)+1i*random_binary(nbits,fs);
%
% Genrate output of tap1 (size the vectors first). 
%
input1 = qpsk_sig(1:8184); output1 = tw1(1:8184).*input1;
%
% Delay the input by eight samples (this is the delay specified 
% in term of number of samples at the sampling rate of 
% 16,000 samples/sec and genrate the output of tap 2.
%
input2 = qpsk_sig(9:8192); output2 = tw2(9:8192).*input2;
%
% Add the two outptus and genrate overall output.
%
qpsk_output = output1+output2;
%
% Matched filter
%
b = ones(1,fs); b = b/fs; a = 1;
sig_fil = filter(b,a,qpsk_output);
%
% End of simulation 
%
% Use the semianalytic BER estimator. The following sets 
% up the semi analytic estimator. Find the maximum magnitude 
% of the cross correlation and the corresponding lag.
%
[cor lags] = vxcorr(qpsk_sig,sig_fil);
[cmax nmax] = max(abs(cor));
timelag = lags(nmax);
theta = angle(cor(nmax));
y = sig_fil*exp(-i*theta);
%
% Noise BW calibration
%
hh = impz(b,a); ts = 1/16; nbw = (fs/2)*sum(hh.^2);
%
% Delay the input, and do BER estimation on the last 128 bits. 
% Use middle sample. Make sure the index does not exceed number 
% of input points. Eb should be computed at the receiver input. 
%
index = (10*fs+8:fs:(nbits-10)*fs+8);
xx = qpsk_sig(index);
yy = y(index-timelag+1);
eb = tb*sum(sum(abs(y).^2))/(nbits*fs);
eb = eb/2;
[peideal,pesystem] = qpsk_berest(xx,yy,EbN0db,eb,tb,nbw);
figure
semilogy(EbN0db,pesystem,'r+-')
xlabel('E_b/N_0 (dB)'); ylabel('Probability of Error'); grid
