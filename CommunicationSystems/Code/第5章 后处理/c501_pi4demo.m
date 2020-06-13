% File: c8_pi4demo.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
m = 200;	bits = 2*m;						% number of symbols and bits
sps = 10;									% samples per symbol
iphase = 0;									% initial phase
order = 5;									% filter order
bw = 0.2;									% normalized filter bandwidth
%
% initialize vectors
%
data = zeros(1,bits); d = zeros(1,m); q = zeros(1,m);
dd = zeros(1,m); qq = zeros(1,m); theta = zeros(1,m);
thetaout = zeros(1,sps*m);
%
% set direct and quadrature bit streams
%
data = round(rand(1,bits));
dd = data(1:2:bits-1);
qq = data(2:2:bits);
%
% main programs
%
theta(1) = iphase;						% set initial phase
thetaout(1:sps) = theta(1)*ones(1,sps);
for k=2:m
   if dd(k) == 1
      phi_k = (2*qq(k)-1)*pi/4;
   else
      phi_k = (2*qq(k)-1)*3*pi/4;
   end   
   theta(k) = phi_k + theta(k-1);
   for i=1:sps
      j = (k-1)*sps+i;
      thetaout(j) = theta(k);
   end
end
d = cos(thetaout);
q = sin(thetaout);
[b,a] = butter(order,bw);
df = filter(b,a,d);
qf = filter(b,a,q);
%
% postprocessor for plotting
%
kk = 0;                                 % set exit counter
while kk == 0                           % test exit counter
k = menu('pi/4 QPSK Plot Options',...
        'Unfiltered pi/4 QPSK Signal Constellation',...
        'Unfiltered pi/4 QPSK Eye Diagram',...
        'Filtered pi/4 QPSK Signal Constellation',...
        'Filtered pi/4 OQPSK Eye Diagram',...
        'Unfiltered Direct and Quadrature Signals',...
        'Filtered Direct and Quadrature Signals',...
        'Exit Program');
        if k == 1
                sigcon(d,q)             	% plot unfiltered signal con. 
                pause
        elseif k ==2
                dqeye(d,q,4*sps)        	% plot unfiltered eye diagram
                pause
        elseif k == 3
                sigcon(df,qf)           	% plot filtered signal con.
                pause
        elseif k == 4
                dqeye(df,qf,4*sps)      	% plot filtered eye diagram
                pause
        elseif k == 5
                numbsym = 10;           	% number of symbols plotted
                dt = d(1:numbsym*sps);  	% truncate d vector
                qt = q(1:numbsym*sps);  	% truncate q vector
                dqplot(dt,qt)          	    % plot truncated d and q signals
                pause
        elseif k == 6
                numbsym = 10;           	% number of symbols to be plotted
                dft=df(1:numbsym*sps);  	% truncate df to desired value
                qft=qf(1:numbsym*sps);  	% truncate qf to desired value
                dqplot(dft,qft)       		% plot truncated signals
                pause
        elseif k == 7
                kk = 1;                 	% set exit counter to exit value
        end
end
% End of script file.