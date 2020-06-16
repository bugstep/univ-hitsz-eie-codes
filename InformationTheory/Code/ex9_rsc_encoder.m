% 实现 (2, 1, 3) RSC 编码

function [C, D, M] = ex9_rsc_encoder(G, M)
	Gb = G(1, :); Gf = G(2, :);
   
   l = length(Gb) - 1;
   M = [zeros(1, l) M];
   L = length(M);
  
   C = []; D = []; A = M; Y = zeros(1, L);
   
   % RSC 编码
   for i = l+1 : L
      for j = 1:l
         A(i) = mod(A(i) + A(i-j) * Gb(j+1), 2);
      end
      for j = 1:l+1
         Y(i) = mod(Y(i) + A(i-j+1) * Gf(j), 2);
      end
      
      C = [C M(i) mod(Y(i), 2)];
      D = [D mod(Y(i), 2)];
   end
   
   % 补充拖尾比特
   for i = L+1:L+l
      M(i) = 0;
      for j = 1:l
         M(i) = M(i) + A(i-j);
      end
      M(i) = mod(M(i), 2);
      
      A(i) = M(i); Y(i) = 0;
      
      for j = 1:l
         A(i) = mod(A(i) + A(i-j) * Gb(j+1), 2);
      end
      for j = 1:l+1
         Y(i) = mod(Y(i) + A(i-j+1) * Gf(j), 2);
      end
      
      C = [C M(i) mod(Y(i), 2)];
      D = [D mod(Y(i), 2)];
   end
   
   M = M(l+1 : length(M));
end
