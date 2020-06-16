function L_all = ex9_sova(y, G, L_a, ind_dec) 
% SOVA�㷨

% ����
% y����������
% G��RSC������ɾ���
% L_a������������Ϣ����ǰһ���������������ⲿ��Ϣ������֯/�⽻֯��õ�
% ind_dec������������������ֵΪ1��2
% ���
% L_all��������Ȼ����ʽ�����������

L_total = length(y)/2;      % ϵͳ��Ϣ/У����Ϣ�ĳ��ȣ�����ʱ���������任��ÿ�������������Ϊ1/2��
[~,K] = size(G);            % nΪÿ��������ض�Ӧ�������������KΪRSC���Լ������
m = K - 1;                  % mΪ����������λ�Ĵ����ĸ���
nstates = 2^m;              % ��������ͼ��״̬��

Infty = 1e10;               % ������������ڳ�ʼ��״̬����ֵ

% ��������ͼ���õ�����ͼ��ǰһ��������ؼ�״̬����һ��������ؼ�״̬
[~, ~, last_out, last_state] = ex9_trellis(G);

delta = 30;                 % SOVA���ڳߴ磨�о���ʱ��

% ������·����״̬������ʼ��Ϊ�������
path_metric = ones(nstates,L_total+1)*(-Infty);

% ǰ����ټ�������·������ֵ
path_metric(1,1) = 0;
Mdiff = zeros(nstates,L_total+1);
prev_bit = zeros(nstates,L_total+1);
for t=1:L_total
   yy = y(2*t-1:2*t);
   for state=1:nstates
      sym0 = last_out(state,1:2);
      sym1 = last_out(state,3:4);
      state0 = last_state(state,1);
      state1 = last_state(state,2);
      Mk0 = yy*sym0' - L_a(t)/2 + path_metric(state0,t);
      Mk1 = yy*sym1' + L_a(t)/2 + path_metric(state1,t);
      
      if Mk0>Mk1
         path_metric(state,t+1)=Mk0;
         Mdiff(state,t+1) = Mk0 - Mk1;
         prev_bit(state, t+1) = 0;
      else
         path_metric(state,t+1)=Mk1;
         Mdiff(state,t+1) = Mk1 - Mk0;
         prev_bit(state,t+1) = 1;
      end

   end
end 
% ���ڵ�1����������������ȫ��״̬��ʼ�������
% ���ڵ�2��������������������ܵ�״̬��ʼ�������
if ind_dec == 1
    mlstate(L_total+1) = 1;
else
%    mlstate(L_total+1) = find(path_metric(:,L_total+1)==max(path_metric(:,L_total+1)));
    temp = find(path_metric(:,L_total+1)==max(path_metric(:,L_total+1)));
    mlstate(L_total+1) = temp(1);
end

% ������ٻ�ù��Ʊ����Լ������Ȼ·��
for t=L_total:-1:1
   est(t) = prev_bit(mlstate(t+1),t+1);
   mlstate(t) = last_state(mlstate(t+1), est(t)+1);
end

% �ҵ���Ӧ�ڲ�ͬ����Ϣ���ع��Ƶľ���·������Сdeltaֵ���õ������
L_all = zeros(1,L_total);
for t=1:L_total
   llr = Infty;
   for i=0:delta
      if t+i<L_total+1
         bit = 1-est(t+i);
         temp_state = last_state(mlstate(t+i+1), bit+1);
         for j=i-1:-1:0
            bit = prev_bit(temp_state,t+j+1);
            temp_state = last_state(temp_state, bit+1);
         end
         if bit~=est(t) 
            llr = min( llr,Mdiff(mlstate(t+i+1), t+i+1) );
         end
      end
   end
   L_all(t) = (2*est(t) - 1) * llr;
end    
                  
               
      
        
   
