%% EXP-1 ������/���ŵ�Ƶ�ʹ���
%
clear all;
close all;
clc;
warning('off','all');
%
%% ���������ź�
%
A = 2; % ��ֵ
f = 1:100; % Ƶ��
phi = 0; % ����λ
fs = 4*f; % ����Ƶ��Ϊ4�����Ƶ��
%
%% EXP-1-1 Ŀ�����벻ͬ���λ�õ��㷨����
%
%% �Ӵ�
% ��64���ź�����Ϊ���ģ����Ҹ�����������
n = [254,255,256,257,258];
% �ڴ�Ԥ����
fe_Rife = zeros(length(f),5); % ���ƽ������
fe_Jacobsen = zeros(length(f),5); % ���ƽ������
fe_Quinn_improved = zeros(length(f),5); % ���ƽ������
%
windows = ["���δ�"; "������"; "������"; "����������"];
window_select = [0, 2, 3, 4]; % 0.���δ���2.��������3.��������4.����������
% ���ǲ�ͬ����Ӱ��
est = zeros(length(f), length(window_select), 3); % ���ƽ������
est_Rife = zeros(length(window_select),length(n)); % RMSE ����
est_Jacobsen = zeros(length(window_select),length(n)); % RMSE ����
est_Quinn_improved = zeros(length(window_select),length(n)); % RMSE ����
for i = 1:length(n)
    for j = 1:length(f)
        N = n(i); % ��������
        F = f(j); % �ź�Ƶ��
       for win_id = 1:length(window_select)
            win = window_select(win_id);
            [s_cont, t_cont, s, t, Sf, Sa, Fa] =...
                Window(N, F, phi, inf, 0, win, 0, 0); % �źżӴ�
            [f_hat, f_Rife, f_Quinn, f_Jacobsen] = Estimate(F, s, Sf, win); % Ƶ�ʹ���
            
            % ���ƽ��������
            est(j, win_id, 1) = (f_Rife - F).^2;
            est(j, win_id, 2) = (f_Quinn - F).^2;
            est(j, win_id, 3) = (f_Jacobsen - F).^2;
       end
    end
    % ���ݴ������RMSE
    est_Rife(:,i) = (sqrt(mean(est(:, :, 1),1)))';
    est_Jacobsen(:,i) = (sqrt(mean(est(:, :, 3),1)))';
    est_Quinn_improved(:,i) = (sqrt(mean(est(:, :, 2),1)))';
end

%% ��������
figure(1)
dd = -0.5:0.25:0.5;
semilogy(dd,est_Rife(1,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Jacobsen(1,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Quinn_improved(1,:),'--o','linewidth',1.5);hold on;
title('Ŀ�����벻ͬ���λ��ʱ���㷨���ƾ��ȶԱ�','FontWeight','bold');
xlabel('���Ƶƫ','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('Rife �㷨-���Ӵ�','Jacobsen �㷨-���Ӵ�','�Ľ� Quinn �㷨-���Ӵ�');
grid on;

figure(2)
semilogy(dd,est_Rife(1,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Rife(2,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Rife(3,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Rife(4,:),'--o','linewidth',1.5);hold on;
title('Ŀ�����벻ͬ���λ��ʱ�� Rife �㷨(�Ӳ�ͬ��)���ƾ��ȶԱ�','FontWeight','bold');
xlabel('���Ƶƫ','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;

figure(3)
semilogy(dd,est_Jacobsen(1,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Jacobsen(2,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Jacobsen(3,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Jacobsen(4,:),'--o','linewidth',1.5);hold on;
title('Ŀ�����벻ͬ���λ��ʱ�� Jacobsen �㷨(�Ӳ�ͬ��)���ƾ��ȶԱ�','FontWeight','bold');
xlabel('���Ƶƫ','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;

figure(4)
semilogy(dd,est_Quinn_improved(1,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Quinn_improved(2,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Quinn_improved(3,:),'--o','linewidth',1.5);hold on;
semilogy(dd,est_Quinn_improved(4,:),'--o','linewidth',1.5);hold on;
title('Ŀ�����벻ͬ���λ��ʱ�� �Ľ�Quinn �㷨(�Ӳ�ͬ��)���ƾ��ȶԱ�','FontWeight','bold');
xlabel('���Ƶƫ','FontWeight','bold');
ylabel('���ƽ��RMSE','FontWeight','bold');
legend('���δ�','������','������','����������');
grid on;

