function [output,state] = ex9_encode_bit(G,input,state)
% 根据单比特输入和生成矩阵系数以及当前状态矢量进行编码，输出编码比特

% 输入
% G：RSC码的生成矩阵
% input：输入待编码比特
% state：编码网格图的状态矢量
% 输出
% output：编码输出
% state：更新后的状态矢量

[n,k] = size(G);        % n为每个输入比特对应的输出比特数，k为RSC码的约束长度
m = k-1;                % m为编码器中移位寄存器的个数

% 计算下一组输出比特（每个输入比特编码输出n个比特）
output = zeros(1,n);
for i = 1:n
    output(i) = G(i,1)*input;
    for j = 2:k
        output(i) = xor(output(i),G(i,j)*state(j-1));
    end
end

% 更新状态矢量
state = [input, state(1:m-1)];      

end
