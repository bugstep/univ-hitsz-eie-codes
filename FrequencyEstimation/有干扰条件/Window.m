function [s_cont, t_cont,   ...
          s, t, Sf, Sa, Fa] ...
   = Window(M, f, b, n, k, w, B, v)

% ��������Ҫ�����ʱ�����
% M����������
% f��Ƶ��
% b������λ
% n�������
% B���������ֵ
% v���������Ƶƫ
% k����������
%  - 0����˹����
%  - 1����������
%  - 2����������
% w������������
%  - 0��
%  - 1��
%  - 2��
%  - 3��
%  - 4��

A = 2;                  % ��ֵ
fs = 4 * f;             % ����Ƶ��Ϊ4�����Ƶ��

t_cont = 0: .001/fs: (M-1)/fs;             % ʱ��
s_cont = A * cos(2 * pi * f * t_cont + b); % �źű��ʽ

t = 0: 1/fs: (M-1)/fs;  
signal = A * cos(2 * pi * f * t + b)...
       + B * A * cos(2 * pi * f * (1 + v) * t + b); % ʱ���ź�����

if n == inf
   noise = zeros(1, M);
else
   % SNR = A^2 / sigma^2
   sigma = sqrt(A ^ 2 / 10^(n/10)); % ������׼��
   if k == 0
        noise = sigma .* randn(1, M); % ��˹����
   else
       if k == 1
           noise = (-sigma .* log(1-randn(1, M))).^0.5; % ��������
       else
           noise = sigma .* rand(1,M); % ��������
       end
   end
end

samples = signal + noise; % AWGNC

% ���봰����
switch (w)
   case 0    % ���δ�
      s = samples .* (rectwin(M))';
   case 1    % ���Ǵ�
      s = samples .* (triang(M))';
   case 2    % ��������Hamming��
      s = samples .* (hamming(M))';
   case 3    % ��������Hanning��
      s = samples .* (hann(M))';
   case 4    % ������������Blackman��
      s = samples .* (blackman(M))';
   case 5    % ���󴰣�Kaiser��
      s = samples .* (kaiser(M, 8.5))';  % beta = 8.5
end

DFT = fft(s, M) / M;       % FFT�õ�Ƶ��
Sf = DFT(1:M/2);
Sa = abs(DFT(1:M/2));

Fa = (0:1:M/2-1) .*fs ./M; % ����Ƶ��
end

