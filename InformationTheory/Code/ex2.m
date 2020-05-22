close all;

% 第一部分：BSC 的信道容量

p = 0:.001:1;
C = 1 + p .* log2(p) + (1-p) .* log2(1-p);

plot(p, C);
grid on;
xlabel('p')
ylabel('C');
title('二元对称信道容量');


% 第二部分：非对称 DMC 信道

NT = input("信源符号个数：");  % 3
NR = input("信宿符号个数：");  % 3
Pt = input("概率转移矩阵：");  % [.5 .25 .25; .25 .5 .25; .25 .25 .5]
rp = input("输入迭代精度：");  % C = 0.085

max_itea = 10000;
cnt_itea = 0;

C_prev = 0;
T_prev = ones(1, NT) / NT;

% Blahut-Arimoto 算法

while cnt_itea < max_itea
   T = T_prev;          % 发送概率
   R = sum(T' .* Pt);   % 收到概率
   Pr = T' .* Pt ./ R;  % 后验概率
   
   % disp(T);
   % disp(R);
   % disp(Pr);
      
   T = ones(1, NT) / NT;
   for i = 1:NT
      T(i) = prod(Pr(i, :) .^ Pt(i, :));
   end
   T = T / sum(T);
   
   C = 0;
   for i = 1:NT
      for j = 1:NR
         if T(i) > 0 && Pr(i, j) > 0
            C = C + T(i) * Pt(i, j) * log2(Pr(i, j) / T(i));
         end
      end
   end
   
   if abs(C - C_prev) < rp
      break
   else
      C_prev = C;
      T_prev = T;
   end
   
   cnt_itea = cnt_itea + 1;
end

fprintf('\n==================\n');
fprintf('Input Distribution: \n');
disp(T);
fprintf('Capacity: %.4f  (%d iterations)\n\n', C, cnt_itea);
