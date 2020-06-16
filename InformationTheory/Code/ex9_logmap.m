function L_all = ex9_logmap(y,G,L_a,ind_dec)
% Log_MAP�㷨

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

Infty = 1e10;               % ������������ڳ�ʼ�����ͦ�

% ��������ͼ���õ�����ͼ��ǰһ��������ؼ�״̬����һ��������ؼ�״̬
[next_out, next_state, last_out, last_state] = ex9_trellis(G);

% ��ʼ����
Alpha(1,1) = 0;                                     % ȫ��״̬�Ħ�ֵ��ʼ��Ϊ0
Alpha(1,2:nstates) = -Infty*ones(1,nstates-1);      % ����״̬�Ħ�ֵ��ʼ��Ϊ�������

% ��ʼ���£���1�������������ͼ���㣬��2��������
if ind_dec==1
   Beta(L_total,1) = 0;                             % ȫ��״̬�Ħ�ֵ��ʼ��Ϊ0
   Beta(L_total,2:nstates) = -Infty*ones(1,nstates-1);  % ����״̬�Ħ�ֵ��ʼ��Ϊ�������
elseif ind_dec==2                                   
   Beta(L_total,1:nstates) = zeros(1,nstates);      % ����״̬�Ħ�ֵ��ʼ��Ϊ0
% else
%    fprintf('ind_dec is limited to 1 and 2!\n');     
end

% ��ǰ���Ƽ����ֵ
for k = 2:L_total+1
    for state2 = 1:nstates
      gamma = -Infty*ones(1,nstates);           % ����״̬�Ħ�ֵ��ʼ��Ϊ�������
      % ��������Ϊ0ʱ�Ħ�ֵ
      gamma(last_state(state2,1)) = (-y(2*k-3)+y(2*k-2)*last_out(state2,2))-log(1+exp(L_a(k-1)));
      % ��������Ϊ1ʱ�Ħ�ֵ
      gamma(last_state(state2,2)) = (y(2*k-3)+y(2*k-2)*last_out(state2,4))+L_a(k-1)-log(1+exp(L_a(k-1)));
      % ���ݦ�ֵ��ǰһʱ�̵Ħ�ֵ����ǰ����Ƽ��㵱ǰʱ�̵Ħ�ֵ
      if(sum(exp(gamma+Alpha(k-1,:)))<1e-300)
         Alpha(k,state2)=-Infty;
      else
         Alpha(k,state2) = log( sum( exp( gamma+Alpha(k-1,:) ) ) );  
      end   
    end
    
    % ��ֵ��һ����������ʽΪ��ȥ���ֵ��
    tempmax(k) = max(Alpha(k,:));
    Alpha(k,:) = Alpha(k,:) - tempmax(k);
end     

% ������Ƽ����ֵ
for k = L_total-1:-1:1
  for state1 = 1:nstates
     gamma = -Infty*ones(1,nstates);        % ����״̬�Ħ�ֵ��ʼ��Ϊ�������
     % ��������Ϊ0ʱ�Ħ�ֵ
     gamma(next_state(state1,1)) = (-y(2*k+1)+y(2*k+2)*next_out(state1,2))-log(1+exp(L_a(k+1)));
     % ��������Ϊ1ʱ�Ħ�ֵ
     gamma(next_state(state1,2)) = (y(2*k+1)+y(2*k+2)*next_out(state1,4))+L_a(k+1)-log(1+exp(L_a(k+1)));
     % ���ݦ�ֵ��ǰһʱ�̵Ħ�ֵ����ǰ����Ƽ��㵱ǰʱ�̵Ħ�ֵ
     if(sum(exp(gamma+Beta(k+1,:)))<1e-300)
        Beta(k,state1)=-Infty;
     else
        Beta(k,state1) = log(sum(exp(gamma+Beta(k+1,:))));
     end   
  end
  
  % ��ֵ��һ����������ʽΪ��ȥ���ֵ��
  Beta(k,:) = Beta(k,:) - tempmax(k+1);
end

% ���������Ȼ����ʽ�������
for k = 1:L_total
  for state2 = 1:nstates
     gamma0 = (-y(2*k-1)+y(2*k)*last_out(state2,2))-log(1+exp(L_a(k)));
     gamma1 = (y(2*k-1)+y(2*k)*last_out(state2,4))+L_a(k)-log(1+exp(L_a(k)));
     temp0(state2) = exp(gamma0 + Alpha(k,last_state(state2,1)) + Beta(k,state2));
     temp1(state2) = exp(gamma1 + Alpha(k,last_state(state2,2)) + Beta(k,state2));
  end
  L_all(k) = log(sum(temp1)) - log(sum(temp0));
end

end
