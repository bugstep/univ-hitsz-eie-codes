% File: dqplot.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function [] = dqplot(xd,xq)
lx = length(xd);
t = 0:lx-1;
nt = t/(lx-1);
nxd = xd(1,1:lx);
nxq = xq(1,1:lx);
subplot(211)
plot(nt,nxd);
a = axis;
axis([a(1) a(2) 1.5*a(3) 1.5*a(4)]);
title('Direct and Quadrature Channel Signals');
xlabel('Normalized Time');
ylabel('Direct');
subplot(212)
plot(nt,nxq);
a = axis;
axis([a(1) a(2) 1.5*a(3) 1.5*a(4)]);
xlabel('Normalized Time');
ylabel('Quadratute');
subplot(111)
% End of function file.
