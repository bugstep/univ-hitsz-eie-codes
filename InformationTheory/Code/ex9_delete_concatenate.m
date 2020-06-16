function X = ex9_delete_concatenate(M, X1, X2, DM)
   D1 = DM(1, :); D2 = DM(2, :);
   l = length(D1); L = length(X1);
   
   if mod(L, l) ~= 0
      rm = l - mod(L, l);
      X1 = [X1 zeros(1, rm)];
      X2 = [X2 zeros(1, rm)];
   else
      rm = 0;
   end
   
   X = [];
   for n = 1:l:L
      for i = 1:l
         p = n + i - 1;
         x = X1(p) * D1(i) + X2(p) * D2(i);
         X = [X M(p) mod(x, 2)];
      end
   end
end
