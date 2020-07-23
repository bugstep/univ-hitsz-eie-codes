function [f_hat, f_Rife, f_Quinn, f_Jacobsen] ...
   = Estimate(f_hat, s, Sf, w)

% 调用不同算法对信号频率进行估计
% f_hat：信号实际频率
% s：    信号时域采样
% Sf：   信号频谱向量
% w：    窗函数的类型

M = length(s);
fs = 4 * f_hat;

f_Rife = Rife_F_Estimator(abs(Sf),fs,M);
f_Quinn = DFT_improved_F_Estimator(Sf,s,fs,M);
f_Jacobsen = Jacobsen_F_Estimator(Sf,fs,M,w);

% fprintf("%g, %g, %g, %g\n", f_hat, f_Rife, f_Quinn, f_Jacobsen);
end

