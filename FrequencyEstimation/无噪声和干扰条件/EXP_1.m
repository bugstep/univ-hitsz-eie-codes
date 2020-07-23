%% EXP-1 无噪声/干扰的频率估计
%
clear all;
close all;
clc;
warning('off','all');
%
%% 单音正弦信号
%
A = 2; % 幅值
f = 1:100; % 频率
phi = 0; % 初相位
fs = 4*f; % 采样频率为4倍最大频率
%
%% EXP-1-1 目标落入不同间隔位置的算法性能
%
%% 加窗
% 以64个信号周期为中心，左右各辐射半个周期
n = [254,255,256,257,258];
% 内存预分配
fe_Rife = zeros(length(f),5); % 估计结果储存
fe_Jacobsen = zeros(length(f),5); % 估计结果储存
fe_Quinn_improved = zeros(length(f),5); % 估计结果储存
%
windows = ["矩形窗"; "哈明窗"; "汉宁窗"; "布莱克曼窗"];
window_select = [0, 2, 3, 4]; % 0.矩形窗，2.哈明窗，3.汉宁窗，4.布莱克曼窗
% 考虑不同窗的影响
est = zeros(length(f), length(window_select), 3); % 估计结果储存
est_Rife = zeros(length(window_select),length(n)); % RMSE 储存
est_Jacobsen = zeros(length(window_select),length(n)); % RMSE 储存
est_Quinn_improved = zeros(length(window_select),length(n)); % RMSE 储存
for i = 1:length(n)
    for j = 1:length(f)
        N = n(i); % 采样点数
        F = f(j); % 信号频率
       for win_id = 1:length(window_select)
            win = window_select(win_id);
            [s_cont, t_cont, s, t, Sf, Sa, Fa] =...
                Window(N, F, phi, inf, 0, win, 0, 0); % 信号加窗
            [f_hat, f_Rife, f_Quinn, f_Jacobsen] = Estimate(F, s, Sf, win); % 频率估计
            
            % 估计结果误差计算
            est(j, win_id, 1) = (f_Rife - F).^2;
            est(j, win_id, 2) = (f_Quinn - F).^2;
            est(j, win_id, 3) = (f_Jacobsen - F).^2;
       end
    end
    % 数据处理，求解RMSE
    est_Rife(:,i) = (sqrt(mean(est(:, :, 1),1)))';
    est_Jacobsen(:,i) = (sqrt(mean(est(:, :, 3),1)))';
    est_Quinn_improved(:,i) = (sqrt(mean(est(:, :, 2),1)))';
end

%% 绘制曲线
figure(1)
dd = -0.5:0.25:0.5;
semilogy(dd,est_Rife(1,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Jacobsen(1,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Quinn_improved(1,:),'--o','linewidth',1.5);hold on;
title('目标落入不同间隔位置时的算法估计精度对比','FontWeight','bold');
xlabel('相对频偏','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('Rife 算法-不加窗','Jacobsen 算法-不加窗','改进 Quinn 算法-不加窗');
grid on;

figure(2)
semilogy(dd,est_Rife(1,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Rife(2,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Rife(3,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Rife(4,:),'--o','linewidth',1.5);hold on;
title('目标落入不同间隔位置时的 Rife 算法(加不同窗)估计精度对比','FontWeight','bold');
xlabel('相对频偏','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;

figure(3)
semilogy(dd,est_Jacobsen(1,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Jacobsen(2,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Jacobsen(3,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Jacobsen(4,:),'--o','linewidth',1.5);hold on;
title('目标落入不同间隔位置时的 Jacobsen 算法(加不同窗)估计精度对比','FontWeight','bold');
xlabel('相对频偏','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;

figure(4)
semilogy(dd,est_Quinn_improved(1,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Quinn_improved(2,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Quinn_improved(3,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Quinn_improved(4,:),'--o','linewidth',1.5);hold on;
title('目标落入不同间隔位置时的 改进Quinn 算法(加不同窗)估计精度对比','FontWeight','bold');
xlabel('相对频偏','FontWeight','bold');
ylabel('估计结果RMSE','FontWeight','bold');
legend('矩形窗','哈明窗','汉宁窗','布莱克曼窗');
grid on;

