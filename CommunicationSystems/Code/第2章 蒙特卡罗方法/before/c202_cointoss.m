% File: c9_cointoss.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
M = 2000;				    % number of experiments
N = 500;					% Number of tosses / experiment
H = zeros(1,M);             % Initialize array
H_theor = zeros(1,M);	    % Initialize array
for j=1:M
   A = rand(1,N);
   heads = 0;
   for k=1:N
      if A(k)<=0.2
         heads = heads+1;
      end
   end
   H(j) = heads;
end
H_max = max(H); H_min = min(H);
r = H_min:H_max;
[Nb] = hist(H,r);
%
for k=H_min:H_max
   H_theor(k) = M*nkchoose(N,k)*((0.2)^k)*((0.8)^(N-k));
end
subplot(2,1,1)
hist(H,r)
xlabel('Number of heads')
ylabel('Number of occurences')
subplot(2,1,2)
plot(r,Nb,'ok',r,H_theor(1,H_min:H_max),'k')
xlabel('Number of heads')
ylabel('Number of occurences')
% End of script file.