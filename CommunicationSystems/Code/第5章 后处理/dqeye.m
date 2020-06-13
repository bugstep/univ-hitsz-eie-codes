% File: dqeye.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function [] = dqeye(xd,xq,m)
lx = length(xd);                % samples in data segment
kcol = floor(lx/m);             % number of columns
xda = [0,xd]; xqa = [0,xq];     % append zeros
for j = 1:kcol                  % column index
    for i = 1:(m+1)             % row index
        kk = (j-1)*m+i;         % sample index
        y1(i,j) = xda(kk);
        y2(i,j) = xqa(kk);
    end
end
subplot(211)                    % direct channel
plot(y1);
title('D/Q EYE DIAGRAM');
xlabel('Sample Index');
ylabel('Direct');
subplot(212)                    % quadrature channel
plot(y2);
xlabel('Sample Index');
ylabel('Quadratute');
subplot(111)                    % restore
% End of function file.