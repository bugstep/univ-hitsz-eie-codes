function [f_hat, f_Rife, f_Quinn, f_Jacobsen] ...
   = Estimate(f_hat, s, Sf, w)

% ���ò�ͬ�㷨���ź�Ƶ�ʽ��й���
% f_hat���ź�ʵ��Ƶ��
% s��    �ź�ʱ�����
% Sf��   �ź�Ƶ������
% w��    ������������

M = length(s);
fs = 4 * f_hat;

f_Rife = Rife_F_Estimator(abs(Sf),fs,M);
f_Quinn = DFT_improved_F_Estimator(Sf,s,fs,M);
f_Jacobsen = Jacobsen_F_Estimator(Sf,fs,M,w);

% fprintf("%g, %g, %g, %g\n", f_hat, f_Rife, f_Quinn, f_Jacobsen);
end

