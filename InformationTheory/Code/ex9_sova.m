function L_all = ex9_sova(y, G, L_a, ind_dec) 
% SOVA算法

% 输入
% y：译码输入
% G：RSC码的生成矩阵
% L_a：输入先验信息，由前一个分量译码器的外部信息经过交织/解交织后得到
% ind_dec：分量译码器索引，值为1或2
% 输出
% L_all：对数似然比形式的译码软输出

L_total = length(y)/2;      % 系统信息/校验信息的长度（编码时经过并串变换，每个分量码的码率为1/2）
[~,K] = size(G);            % n为每个输入比特对应的输出比特数，K为RSC码的约束长度
m = K - 1;                  % m为编码器中移位寄存器的个数
nstates = 2^m;              % 编码网格图的状态数

Infty = 1e10;               % 定义无穷大，用于初始化状态度量值

% 建立网格图，得到网格图上前一个输出比特及状态，下一个输出比特及状态
[~, ~, last_out, last_state] = ex9_trellis(G);

delta = 30;                 % SOVA窗口尺寸（判决延时）

% 将所有路径的状态度量初始化为负无穷大
path_metric = ones(nstates,L_total+1)*(-Infty);

% 前向跟踪计算所有路径度量值
path_metric(1,1) = 0;
Mdiff = zeros(nstates,L_total+1);
prev_bit = zeros(nstates,L_total+1);
for t=1:L_total
   yy = y(2*t-1:2*t);
   for state=1:nstates
      sym0 = last_out(state,1:2);
      sym1 = last_out(state,3:4);
      state0 = last_state(state,1);
      state1 = last_state(state,2);
      Mk0 = yy*sym0' - L_a(t)/2 + path_metric(state0,t);
      Mk1 = yy*sym1' + L_a(t)/2 + path_metric(state1,t);
      
      if Mk0>Mk1
         path_metric(state,t+1)=Mk0;
         Mdiff(state,t+1) = Mk0 - Mk1;
         prev_bit(state, t+1) = 0;
      else
         path_metric(state,t+1)=Mk1;
         Mdiff(state,t+1) = Mk1 - Mk0;
         prev_bit(state,t+1) = 1;
      end

   end
end 
% 对于第1个分量译码器，从全零状态开始后向跟踪
% 对于第2个分量译码器，从最可能的状态开始后向跟踪
if ind_dec == 1
    mlstate(L_total+1) = 1;
else
%    mlstate(L_total+1) = find(path_metric(:,L_total+1)==max(path_metric(:,L_total+1)));
    temp = find(path_metric(:,L_total+1)==max(path_metric(:,L_total+1)));
    mlstate(L_total+1) = temp(1);
end

% 后向跟踪获得估计比特以及最大似然路径
for t=L_total:-1:1
   est(t) = prev_bit(mlstate(t+1),t+1);
   mlstate(t) = last_state(mlstate(t+1), est(t)+1);
end

% 找到相应于不同于信息比特估计的竞争路径的最小delta值，得到软输出
L_all = zeros(1,L_total);
for t=1:L_total
   llr = Infty;
   for i=0:delta
      if t+i<L_total+1
         bit = 1-est(t+i);
         temp_state = last_state(mlstate(t+i+1), bit+1);
         for j=i-1:-1:0
            bit = prev_bit(temp_state,t+j+1);
            temp_state = last_state(temp_state, bit+1);
         end
         if bit~=est(t) 
            llr = min( llr,Mdiff(mlstate(t+i+1), t+i+1) );
         end
      end
   end
   L_all(t) = (2*est(t) - 1) * llr;
end    
                  
               
      
        
   
