function [ next_state,memory_contents ] = ex7_next_state_function( current_state,input,L,k )
%（n,k,L）编码,寄存器下一时刻状态跳转及当前时刻内容
%   current_state    当前寄存器状态(DEC)
%   input            编码输入（DEC），即分支编号
%   L                约束长度
%   k                编码位数
%   next_state       下一时刻寄存器状态(DEC)
%   memory_contents  当前时刻寄存器内容（BIN）
bin_current_state = ex7_dec2bin(current_state,k*(L-1));
bin_input = ex7_dec2bin(input,k);
bin_next_state = [bin_input,bin_current_state(1:k*(L-2))];
next_state = ex7_bin2dec(bin_next_state);
memory_contents = [bin_input,bin_current_state];
end

