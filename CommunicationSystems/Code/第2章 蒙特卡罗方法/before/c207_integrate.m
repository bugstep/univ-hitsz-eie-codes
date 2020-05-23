% File: c9_example5
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
M=5;						% Number of experiments
N=500;					    % Trials per experiment
u = rand(N,M);	    		% Generate random numbers
uu = 1./(1+u.*u);		    % Define function
data = zeros(N,M);	        % Initialize array
% The following four lines of code determine
% M estimates as a function of j, 0<j<=N.
data(1,:) = 4*uu(1,:); 
for j=2:N
   data(j,:)=4*sum(uu(1:j,:))/j;
end
est = data(N,:)		        % M estimates of pi
est1 = sum(est)/M		    % Average estimate
plot(data,'k')			    % Plot results
xlabel('Number of Trials')
ylabel('Estimate of pi')
% End of script file.
