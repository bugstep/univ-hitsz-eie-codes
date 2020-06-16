function L_all = ex9_logmap(y,G,L_a,ind_dec)
% Log_MAP算法

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

Infty = 1e10;               % 定义无穷大，用于初始化α和β

% 建立网格图，得到网格图上前一个输出比特及状态，下一个输出比特及状态
[next_out, next_state, last_out, last_state] = ex9_trellis(G);

% 初始化α
Alpha(1,1) = 0;                                     % 全零状态的α值初始化为0
Alpha(1,2:nstates) = -Infty*ones(1,nstates-1);      % 其他状态的α值初始化为负无穷大

% 初始化β：第1个分量码的网格图归零，第2个不归零
if ind_dec==1
   Beta(L_total,1) = 0;                             % 全零状态的β值初始化为0
   Beta(L_total,2:nstates) = -Infty*ones(1,nstates-1);  % 其他状态的β值初始化为负无穷大
elseif ind_dec==2                                   
   Beta(L_total,1:nstates) = zeros(1,nstates);      % 所有状态的β值初始化为0
% else
%    fprintf('ind_dec is limited to 1 and 2!\n');     
end

% 向前递推计算α值
for k = 2:L_total+1
    for state2 = 1:nstates
      gamma = -Infty*ones(1,nstates);           % 所有状态的γ值初始化为负无穷大
      % 计算输入为0时的γ值
      gamma(last_state(state2,1)) = (-y(2*k-3)+y(2*k-2)*last_out(state2,2))-log(1+exp(L_a(k-1)));
      % 计算输入为1时的γ值
      gamma(last_state(state2,2)) = (y(2*k-3)+y(2*k-2)*last_out(state2,4))+L_a(k-1)-log(1+exp(L_a(k-1)));
      % 根据γ值和前一时刻的α值计算前向递推计算当前时刻的α值
      if(sum(exp(gamma+Alpha(k-1,:)))<1e-300)
         Alpha(k,state2)=-Infty;
      else
         Alpha(k,state2) = log( sum( exp( gamma+Alpha(k-1,:) ) ) );  
      end   
    end
    
    % α值归一化（对数形式为减去最大值）
    tempmax(k) = max(Alpha(k,:));
    Alpha(k,:) = Alpha(k,:) - tempmax(k);
end     

% 后向递推计算β值
for k = L_total-1:-1:1
  for state1 = 1:nstates
     gamma = -Infty*ones(1,nstates);        % 所有状态的γ值初始化为负无穷大
     % 计算输入为0时的γ值
     gamma(next_state(state1,1)) = (-y(2*k+1)+y(2*k+2)*next_out(state1,2))-log(1+exp(L_a(k+1)));
     % 计算输入为1时的γ值
     gamma(next_state(state1,2)) = (y(2*k+1)+y(2*k+2)*next_out(state1,4))+L_a(k+1)-log(1+exp(L_a(k+1)));
     % 根据γ值和前一时刻的β值计算前向递推计算当前时刻的β值
     if(sum(exp(gamma+Beta(k+1,:)))<1e-300)
        Beta(k,state1)=-Infty;
     else
        Beta(k,state1) = log(sum(exp(gamma+Beta(k+1,:))));
     end   
  end
  
  % β值归一化（对数形式为减去最大值）
  Beta(k,:) = Beta(k,:) - tempmax(k+1);
end

% 计算对数似然比形式的软输出
for k = 1:L_total
  for state2 = 1:nstates
     gamma0 = (-y(2*k-1)+y(2*k)*last_out(state2,2))-log(1+exp(L_a(k)));
     gamma1 = (y(2*k-1)+y(2*k)*last_out(state2,4))+L_a(k)-log(1+exp(L_a(k)));
     temp0(state2) = exp(gamma0 + Alpha(k,last_state(state2,1)) + Beta(k,state2));
     temp1(state2) = exp(gamma1 + Alpha(k,last_state(state2,2)) + Beta(k,state2));
  end
  L_all(k) = log(sum(temp1)) - log(sum(temp0));
end

end
