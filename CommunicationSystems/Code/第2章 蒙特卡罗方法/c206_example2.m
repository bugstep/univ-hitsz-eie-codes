% File: c7_example2.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
nbits = 10; nsamples = 8;
x = random_binary(nbits,nsamples)+1i*random_binary(nbits,nsamples);
xd = real(x); xq = imag(x);
subplot(2,1,1)
stem(xd,'.'); grid; axis([0 80 -1.5 1.5]);
xlabel('Sample Index'); ylabel('xd')
subplot(2,1,2)
stem(xq,'.'); grid; axis([0 80 -1.5 1.5]);
xlabel('Sample Index'); ylabel('xq')
% End of script file.