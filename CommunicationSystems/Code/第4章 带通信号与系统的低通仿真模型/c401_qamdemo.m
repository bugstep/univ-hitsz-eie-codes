% File: c4_qamdemo.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
levelx = input('Number of D levels > ');
levely = input('Number of Q levels > ');
m = input('Number of symbols > ');
n = input('Number of samples per symbol > ');
bw = input('Filter bandwidth, 0<bw<1 > ');
%
[xd,xq] = qam(levelx,levely,m,n);
%
[b,a] = butter(6,bw);				% determine filter coefficients
yd = filter(b,a,xd);				% filter direct coefficient
yq = filter(b,a,xq);				% filter quadrature coefficient
%
subplot(2,2,1)						% first pane
plot(xd,xq,'o')						% unfiltered scatterplot
a = 1.4;
maxd = max(xd); maxq = max(xq);
mind = min(xd); minq = min(xq);
axis([a*mind a*maxd a*minq a*maxq])
axis equal
xlabel('xd'); ylabel('xq')
%
subplot(2,2,2)						% second pane
plot(yd,yq)							% filtered scatterplot
axis equal;
xlabel('xd'); ylabel('xq');
%
sym = 30;							% number of symbols in time plot
nsym = (0:sym*n)/n;					% x axis vector for time plots
subplot(2,2,3)						% third pane 
plot(nsym(1:sym*n),yd(1:sym*n))	    % filtered direct component 
xlabel('symbol index');
ylabel('xd');
%
subplot(2,2,4)						% fourth pane
plot(nsym(1:sym*n),yq(1:sym*n))	    % filtered quadrature component
xlabel('symbol index');
ylabel('xq');
% End of script file.