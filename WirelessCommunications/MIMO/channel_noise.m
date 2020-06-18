function [Co, H]=channel_noise(Ci, Nt, Nr, sigma, No)
   H = (normrnd(0, sigma, Nr, Nt) ...
              + 1i * normrnd(0, sigma, Nr, Nt)) / sqrt(2);     % 信道矩阵
   T = reshape(Ci,2,[]);
   Co = H * T + (normrnd(0, sqrt(No), size(T)) ...
          + 1i * normrnd(0, sqrt(No), size(T))) / sqrt(2);     % 通过信道
end

