function msghat = ex9_turbo_decoder(encoder_out,G,interleaver,dec_alg,niter)
% Turbo��������

% ����
% encoder_out��Turbo��ı����������BPSK���ƺ����Ϣ
% G��RSC������ɾ���
% interleaver����֯ӳ���
% dec_alg��ѡ�������㷨��0ΪLog-MAP�㷨��1ΪSOVA�㷨
% niter�������������
% ���
% msghat��Turbo����������

[~,K] = size(G);            % nΪÿ��������ض�Ӧ�������������KΪSRC���Լ������
m = K-1;                    % mΪ����������λ�Ĵ����ĸ���
L_total = length(encoder_out)/2;
yk = zeros(2,2*L_total);    %ÿ�����������������

% �⸴�ã�����ÿ��������������������������
y_sys = encoder_out(1:2:end);
yk(1,1:2:end) = y_sys;
yk(1,2:4:end) = encoder_out(2:4:end);
yk(2,1:2:end) = y_sys(interleaver);
yk(2,4:4:end) = encoder_out(4:4:end);

L_e = zeros(1,L_total);      % ��ʼ���ⲿ��Ϣʸ��
L_a = zeros(1,L_total);
msghat = zeros(1,L_total);

for iter = 1:niter
    % ��1������������
    L_a(interleaver) = L_e;             % ������Ϣ
    if dec_alg == 0
        L_all = ex9_logmap(yk(1,:),G,L_a,1);        % Log-MAP�㷨
    else
        L_all = ex9_sova(yk(1,:),G,L_a,1);          % SOVA�㷨
    end
    L_e = L_all-2*yk(1,1:2:2*L_total)-L_a;       % �����ⲿ��Ϣ
            
    % ��2������������
    L_a = L_e(interleaver);             % ������Ϣ
    if dec_alg == 0
        L_all = ex9_logmap(yk(2,:),G,L_a,2);        % Log-MAP�㷨
    else
        L_all = ex9_sova(yk(2,:),G,L_a,2);          % SOVA�㷨
    end
    L_e = L_all-2*yk(2,1:2:2*L_total)-L_a;       % �����ⲿ��Ϣ
            
    %������Ϣ���ص�ֵ
    msghat(interleaver) = (sign(L_all)+1)/2;
end
msghat=msghat(1:length(msghat)-m);

end
