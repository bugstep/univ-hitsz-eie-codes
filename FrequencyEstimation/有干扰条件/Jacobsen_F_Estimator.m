function fe = Jacobsen_F_Estimator(Sn,fs,N,se)
%   Jacobsen_F_Estimator
%   ����SnΪ����õĽ����ź�Ƶ������
%   fs������Ƶ��
%   N����������
%%
% WINDOW      P     Q
% HAMMING   1.22  0.60
% HANNING   1.36  0.55
% BLACKMAN  1.75  0.55
% ���ڲ���se�����δ����޴�0��������2��������3������������4
%% 
Sn(1) = 0;
[~,index] = sort(abs(Sn),'descend');
switch(se)
    case 0
        d = -real((Sn(index(1)+1)-Sn(index(1)-1))/...
            (2*Sn(index(1))-Sn(index(1)-1)-Sn(index(1)+1)));
    case 2
        Q = 0.6;
        d = real(Q*(Sn(index(1)-1)-Sn(index(1)+1))/...
            (2*Sn(index(1))+Sn(index(1)-1)+Sn(index(1)+1)));
    case 3
        Q = 0.55;
        d = real(Q*(Sn(index(1)-1)-Sn(index(1)+1))/...
            (2*Sn(index(1))+Sn(index(1)-1)+Sn(index(1)+1)));
    case 4
        Q = 0.55;
        d = real(Q*(Sn(index(1)-1)-Sn(index(1)+1))/...
            (2*Sn(index(1))+Sn(index(1)-1)+Sn(index(1)+1)));
    otherwise
        error('Input value ERROR!');
end

fe = (index(1)+d-1)*fs/N;
end

