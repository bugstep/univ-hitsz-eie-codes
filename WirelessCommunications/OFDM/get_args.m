function [K, IQ, N, T] = get_args(M)
   if M == 2
      N = 1; 
      T = 'BPSK';
      K = 1;
   elseif M == 4
      N = 2; 
      T = 'QPSK';
      K = 1/sqrt(2);
   elseif M == 16 
      N = 3; 
      T = '16QAM';
      K = 1/sqrt(10);
   elseif M == 64   
      N = 4; 
      T = '64QAM';
      K = 1/sqrt(42);
   end

   IQ = qammod((0:M-1), M);
end

