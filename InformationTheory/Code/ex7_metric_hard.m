function [ distance ] = ex7_metric_hard( x,y )
% 硬判决与汉明距测量
if x == y
    distance = 0;
else
    distance = 1;
end
end
