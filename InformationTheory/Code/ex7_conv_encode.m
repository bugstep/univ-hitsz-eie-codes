function C = ex_7_conv_encode(g, M)
   C = [];
   g = fliplr(g);
   [n, N] = size(g);
   M = [zeros(1, N-1), M, zeros(1, N)];
   
   for p = N:length(M)
      m = M(p-N+1 : p);
      c = m * g';
      
      for i = c
         if mod(i, 2) == 0
            C = [C 0];
         else
            C = [C 1];
         end
      end
   end
end
