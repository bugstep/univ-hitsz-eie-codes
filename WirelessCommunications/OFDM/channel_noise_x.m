function R = channel_noise_x(T, SNR)
   Eb_N0 = 10 ^ (SNR / 10);
   sigma = sqrt(1 / (2 * Eb_N0));
   R = T + sigma .* randn(1, length(T)) ./ sqrt(2) ...
    + 1i * sigma .* randn(1, length(T)) ./ sqrt(2);
end
