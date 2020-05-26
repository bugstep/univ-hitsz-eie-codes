function C = ex6_decode(R, H, details)
   if (nargin < 3)
        details = true;
   end
   
   C = [];
   table = containers.Map;

   Es = [0,0,0,0,0,0,0; eye(7)];
   for Ei = Es'
      Si = mod(Ei' * H', 2);
      table(replace(num2str(Si), ' ', '')) = Ei';
   end

   for i = 1: length(R) / 7
      Ri = R(i * 7 - 6 : i * 7);
      Si = mod(Ri * H', 2);
      Ei = table(replace(num2str(Si), ' ', ''));
      Ci = mod(Ri + Ei, 2);
      
      Ci = Ci(1: 4);
      C = [C Ci];
      
      if details
         fprintf("\n[%02d] %s -> %s", i, ...
            replace(num2str(Ri), ' ', ''), ...
            replace(num2str(Ci), ' ', ''));
      end
   end
end
