function C = ex6_encode(M, G, details)
   if (nargin < 3)
        details = true;
   end
   
   C = [];
   
   while mod(length(M), 4)
      M = [M 0];
   end

   for i = 1: length(M) / 4
      Mi = M(4 * i - 3 : 4 * i);
      Ci = mod(Mi * G, 2);

      C = [C Ci];
      
      if details
         fprintf("\n[%02d] %s -> %s", i, ...
            replace(num2str(Mi), ' ', ''), ...
            replace(num2str(Ci), ' ', ''));
      end
   end
end
