function R = ex9_channel_noise(M, SNR)
   Eb_N0 = 10 ^ (SNR / 10);
   sigma = sqrt(1 / (2 * Eb_N0));
   
   T = M .* 2 - 1;
   R = T + sigma .* randn(1, length(T));
end
