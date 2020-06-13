% File: c5_filterex1.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
n = 40;								% number of samples
order = 4;							% filter order
[b,a] = butter(order,0.1);		    % prototype
%
% The following program segment is the block processing implementation.
%
in1 = [1,zeros(1,n-1)];			    % input vector
out1 = filter(b,a,in1);			    % output vector
%
% The following program segment is the sample-by-sample implementation.
%
sreg = zeros(1,order+1);		    % initialize shift register
for k=1:n
   if k==1
      in=1;							% impulse input
   else
      in=0;
   end
   out = b(1)*in + sreg(1,1);		% determine output
   sreg = in*b - out*a + sreg;		% update register
   sreg = [sreg(1,2:(order+1)),0];	% shift
   out2(k) = out; 						% create output vector
end
%
subplot(2,1,1)
index = 0:n-1;
stem(index,out1)
xlabel('Sample Index')
ylabel('Block Processing')
subplot(2,1,2)
stem(index,out2)
xlabel('Sample Index')
ylabel('Serial Processing')
% End of script file.