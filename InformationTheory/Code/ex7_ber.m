function [BER_p, BER_h, BER_c] = ex7_ber(M, SNR, P, g)
   [P, G, H] = ex6_init(P, false);
   
   Eb_N0 = 10 ^ (SNR / 10);
   sigma = sqrt(1 / (2 * Eb_N0));
   
   % 未编码
   T = M .* 2 - 1;
   R = T + sigma .* randn(1, length(T));
   R = R > 0;
   
   BER_p = sum(R ~= M) / length(M);
   
   % 汉明码
   C = ex6_encode(M, G, false);

   T = C .* 2 - 1;
   R = T + sigma .* randn(1, length(T));
   R = R > 0;
   
   S = ex6_decode(R, H, false);
   S = S(1: length(M));

   BER_h = sum(S ~= M) / length(M);
   
   % 卷积码
   C = ex7_conv_encode(g, M);
   
   T = C .* 2 - 1;
   R = T + sigma .* randn(1, length(T));
   R = R > 0;
   
   S = ex7_conv_decode(g, 1, R);
   
   BER_c = sum(S ~= M) / length(M);
end
