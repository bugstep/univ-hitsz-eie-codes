% File c7_Jakes.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
% Generate and test the impulse response of the filter.
%
fd = 100;						% maximum doppler
impw = jakes_filter(fd);		% call to Jakes filter
fs = 16*fd; ts = 1/fs; 			% sampling frequency and time
time = [1*ts:ts:128*ts];		% time vector for plot
subplot(2,1,1)
stem(time,impw,'.'); grid 
xlabel('Time'); ylabel('Impulse Response')
%
% Square the fft and check the power transfer function.
%
[h f] = linear_fft(impw,128,ts);    % generate H(f) for filter
subplot(2,1,2)
plot(f,abs(h.*h)); grid;
xlabel('Frequency'); ylabel('PSD')
%
% Put Gaussian noise through and check the output psd.
%
x = randn(1,1024);                      % generate Gaussian input
y = filter(impw,1,x);                   % filter Gaussian input
[output_psd ff] = log_psd(y,1024,ts);   % log of PSD
figure;
subplot(2,1,1)
plot(ff,output_psd); grid;
axis([-500 500 -50 0])
xlabel('Frequency'); ylabel('PSD')
%
% Filter complex noise and look at the envelope fading.
%
z = randn(1,1024)+i*randn(1,1024);      % generate complex noise
zz = filter(impw,1,z);                  % filter complex noise
time = (0.0:ts:1024*ts);                % new time axis
%
% Normalize output and plot envelope.
%
zz = zz/max(max(abs(zz)));              % normalize to one
subplot(2,1,2)
plot(time(161:480),10*log10(abs(zz(161:480)))); grid
axis([0.1 0.3 -20 0])
xlabel('Time'); ylabel('Log Amplitude')
% End of function file.