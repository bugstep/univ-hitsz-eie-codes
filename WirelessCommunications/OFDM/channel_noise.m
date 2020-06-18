function R = channel_noise(T, SNR, Eb)
   R = T + (noise() + 1i*noise()) / sqrt(2);

   function Ao = noise()
      No = Eb / SNR;
      Ao = normrnd(0, sqrt(No), size(T));
   end
end
