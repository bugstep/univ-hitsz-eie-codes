% 通信系统仿真（三）：无线信道建模仿真方法
%
% 实验四：对下面三种信道情况：
%             情况一：有积分—清除接收机的 AWGN 信道；
%             情况二：瑞利衰落信道加 AWGN 信道，无时延；
%             情况三：例题 7 中由于多普勒原因引起的衰落信道；
%        对比三种信道情况下 QPSK 系统，进行 BER 对 Eb/N0 的性能比较。

%
% Default parameters
% 
NN = 512;								% number of symbols
tb = 0.5;								% bit time
fs = 16;                                % samples/symbol
ebn0db = [1:2:14];						% Eb/N0 vector
%
% Establish QPSK signals
%
x = random_binary(NN,fs)+i*random_binary(NN,fs);   % QPSK signal
%
% Input powers and delays
%
P = [1,1];
%
% Set up the Complex Gaussian (Rayleigh) gains
%
gain = zeros(2,NN);
for n = 1:2
    gain(n,:) = sqrt(P(n))*abs(randn(1,NN) + 1i*randn(1,NN));
end

gain_sample = zeros(2,NN*fs);
for k = 1:NN
    gain_sample(:,(k-1)*fs+1:k*fs) = gain(:,k).*ones(2,fs);
end
y = gain_sample(1,:).*x + gain_sample(2,:).*x;
%
% Matched filter
%
b = ones(1,fs); b = b/fs; a = 1;
y = filter(b,a,y);
%
% End of simulation 
%
% Use the semianalytic BER estimator. The following sets 
% up the semi analytic estimator. Find the maximum magnitude 
% of the cross correlation and the corresponding lag.
%
[cor lags] = vxcorr(x,y);
[cmax nmax] = max(abs(cor));
timelag = lags(nmax);
theta = angle(cor(nmax))
y = y*exp(-i*theta);     								% derotate 
%
% Noise BW calibration
%
hh = impz(b,a); ts = 1/16; nbw = (fs/2)*sum(hh.^2);
%
% Delay the input, and do BER estimation on the last 128 bits. 
% Use middle sample. Make sure the index does not exceed number 
% of input points. Eb should be computed at the receiver input. 
%
index = (10*fs+8:fs:(NN-10)*fs+8);
xx = x(index);
yy = y(index-timelag+1);
eb = tb*sum(sum(abs(y).^2))/(NN*fs);
eb = eb/2;
[peideal,pesystem] = qpsk_berest(xx,yy,ebn0db,eb,tb,nbw);
figure
semilogy(ebn0db,peideal,'b*-',ebn0db,pesystem,'r+-')
xlabel('E_b/N_0 (dB)'); ylabel('Probability of Error'); grid
axis([0 14 10^(-10) 1])
% End of script file.
