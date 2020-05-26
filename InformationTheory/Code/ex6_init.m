function [P, G, H] = ex6_init(P, details)
   if (nargin < 2)
        details = true;
   end
   
   if details
      P
      G = [eye(4) P]
      H = [P' eye(3)]
   else
      G = [eye(4) P];
      H = [P' eye(3)];
   end
end
