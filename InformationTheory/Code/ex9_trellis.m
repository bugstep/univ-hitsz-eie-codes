function [next_out, next_state, last_out, last_state] = ex9_trellis(G)
% 网格图建立函数，在Log-MAP算法中被调用

% 输入
% G：RSC码的生成矩阵（二元形式）
% 输出
% next_out(i,1:2)：输入input=0、状态state=i时的下一组输出（系统比特，校验比特）
% next_out(i,3:4)：输入input=1、状态state=i时的下一组输出（系统比特，校验比特）
% next_state(i,1)：输入input=0、状态state=i时网格图转移到的下一状态
% next_state(i,2)：输入input=1、状态state=i时网格图转移到的下一状态
% last_out(i,1:2)：输入input=0、状态state=i时的前一组输出（系统比特，校验比特）
% last_out(i,3:4)：输入input=1、状态state=i时的前一组输出（系统比特，校验比特）
% next_state(i,1)：输入input=0、状态state=i时网格图转移到的前一状态
% next_state(i,2)：输入input=1、状态state=i时网格图转移到的前一状态

[~,K] = size(G);        % n为每个输入比特对于的输出比特数，K为RSC码的约束长度
m = K - 1;              % m为编码器中移位寄存器的个数
max_state = 2^m;        % 编码网格图的状态数

% 建立网格图的每个状态下系统码的next_out和next_state度量
for state=1:max_state
   state_vector = ex9_dec2bin( state-1, m );
   
   % 接收值为0的处理
%    d_k = 0;
   a_k = rem( G(1,:)*[0 state_vector]', 2 );
   [out_0, state_0] = ex9_encode_bit(G, a_k, state_vector);
   out_0(1) = 0;
  
   % 接收值为1的处理
%    d_k = 1;
   a_k = rem( G(1,:)*[1 state_vector]', 2 );
   [out_1, state_1] = ex9_encode_bit(G, a_k, state_vector);
   out_1(1) = 1;
   next_out(state,:) = 2*[out_0 out_1]-1;
   next_state(state,:) = [(ex9_bin2dec(state_0)+1) (ex9_bin2dec(state_1)+1)];
end

% 找出转移到当前状态的前两个状态
last_state = zeros(max_state,2);
last_out = zeros(max_state,2);
for bit=0:1
   for state=1:max_state
      last_state(next_state(state,bit+1), bit+1)=state;
      last_out(next_state(state, bit+1), bit*2+1:bit*2+2) = next_out(state, bit*2+1:bit*2+2);
   end 
end

end
