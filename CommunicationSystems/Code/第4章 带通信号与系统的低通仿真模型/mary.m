% File: mary.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function y= mary(levels,m,n)
% m = number of symbols
% n = samples per symbol
l = m*n;                         % Total sequence length
y = zeros(1,l-n+1);              % Initalize output vector
lm1 = levels-1;
x=2*fix(levels*rand(1,m))-lm1;
for i = 1:m                      % Loop to generate info symbols
        k = (i-1)*n+1;
        y(k) = x(i);
end
y = conv(y,ones(1,n));           % Make each symbol n samples
% End of function file.
