% File: c3_lininterp.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function h=c3_lininterp(M)
h1 = zeros(1,(M-1));
for j=1:(M-1)
   h1(j) = j/M;
end
h = [0,h1,1,fliplr(h1),0];
% End of script file.