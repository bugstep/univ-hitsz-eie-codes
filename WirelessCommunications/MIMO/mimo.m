N = 10000; ITEA = 50000;

MINSNR = -10; MAXSNR = 30;
Nr = 2; Nt = 2;

error_ZF   = zeros(1, MAXSNR-MINSNR+1); 
error_MMSE = zeros(1, MAXSNR-MINSNR+1); 

for SNR = MINSNR:MAXSNR
   No = 1; sigma = 1;
   Eb_No = 10 ^ (SNR / 10);
   Eb = No * Eb_No;
   zf = 0; mmse = 0;
   
   parfor n = 1:ITEA
      M = randi(2, 1, N) - 1;
      T = M .* 2 - 1;     % BPSK
      T = sqrt(Eb) * T;
      P = mean(abs(T) .^ 2);

      [R, H] = channel_noise(T, Nt, Nr, sigma, No);

      R_ZF = real(ZF(R, H)) > 0;
      R_MMSE = real(MMSE(R, H, No, P)) > 0;
      
      zf = zf + sum(R_ZF ~= M);      
      mmse = mmse + sum(R_MMSE ~= M);
   end
   
   error_ZF(SNR-MINSNR+1) = zf;
   error_MMSE(SNR-MINSNR+1) = mmse;
end

BER_ZF = error_ZF ./ (N * ITEA);
BER_MMSE = error_MMSE ./ (N * ITEA);

semilogy(MINSNR:MAXSNR, BER_ZF, 'o-', ...
         MINSNR:MAXSNR, BER_MMSE, 'o-');
legend('ZF', 'MMSE'); grid on;
xlabel('SNR (dB)'); ylabel('BER');
title('迫零接收机与最小均方误差接收机的比较')
