% File: c9_estimatepi
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
m=input('Enter M, the number of experiments > ');
n=input('Enter N, the number of trials per experiment > ');
z=zeros(1,m);
data = zeros(n,m);
for j=1:m
    x=rand(1,n);
    y=rand(1,n);
    k=0;
    for i=1:n
        if x(i)^2+y(i)^2 <= 1		% Fall inside pie slice?
            k=k+1;
        end
        data(i,j) = 4*(k/i);		% jth estimate of pi
    end
    z(j) = data(n,j);				% Store data
end
plot(data,'k')						% Plot curves
xlabel('Number of Trials')
ylabel('Estimate of pi')
% End of script file.