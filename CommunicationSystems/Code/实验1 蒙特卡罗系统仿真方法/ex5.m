% 通信系统仿真（一）：蒙特卡罗系统仿真方法
%
% 实验五：c213.m 考察了差分 QPSK 系统的蒙特卡罗仿真，
%        重新编写 QPSK 系统而不是差分 QPSK 系统的仿真程序，
%        与差分 QPSK 系统从多个方面进行对比。

close all; clear all;

% BER
figure;
Eb = 22:0.5:26; No = -50;					      % Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70;					      % Channel attenuation in dB
EbNodB = (Eb-ChannelAttenuation)-No;         % Eb/No in dB
EbNo = 10.^(EbNodB./10);					      % Eb/No in linear units

BER_T_QPSK = 0.5*erfc(sqrt(EbNo))/2; 			% BER (theoretical)
N = round(100./BER_T_QPSK);          			% Symbols to transmit
BER_MC_QPSK = zeros(size(Eb)); 					% Initialize BER vector
for k=1:length(Eb)        					      % Main Loop
  BER_MC_QPSK(k) = ex5_MCQPSKrun(N(k),Eb(k),No,ChannelAttenuation,0,0,0,0);
  disp(['Simulation ',num2str(k*100/length(Eb)),'% Complete']);
end

BER_T_DQPSK = 0.5*erfc(sqrt(EbNo)); 			% BER (theoretical)
N = round(100./BER_T_DQPSK);          			% Symbols to transmit
BER_MC_DQPSK = zeros(size(Eb)); 					% Initialize BER vector
for k=1:length(Eb)        					      % Main Loop
  BER_MC_DQPSK(k) = c214_MCQPSKrun(N(k),Eb(k),No,ChannelAttenuation,0,0,0,0);
  disp(['Simulation ',num2str(k*100/length(Eb)),'% Complete']);
end

semilogy(EbNodB,BER_MC_QPSK, 'o', EbNodB,2*BER_T_QPSK, '-', ...
         EbNodB,BER_MC_DQPSK,'o', EbNodB,2*BER_T_DQPSK,'-')
xlabel('Eb/No (dB)'); ylabel('Bit Error Rate'); 
legend('QPSK Estimate BER',  'QPSK Theoretical BER', ...
      'DQPSK Estimate BER', 'DQPSK Theoretical BER'); grid;

% Delay
figure;
Eb = 23; No = -50;				               % Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70;		               % channel attenuation in dB
N = 1000;                        
delay = -0.1:0.1:0.5;                  
EbNo = 10.^(((Eb-ChannelAttenuation)-No)/10);

BER_MC_QPSK = zeros(size(delay));
for k=1:length(delay)            
  BER_MC_QPSK(k) = ex5_MCQPSKrun(N,Eb,...
       No,ChannelAttenuation,delay(k),0,0,0);
  disp(['Simulation ',...
       num2str(k*100/length(delay)),'% Complete']);
end
BER_T_QPSK = 0.5*erfc(sqrt(EbNo))*ones(size(delay))/2;

BER_MC_DQPSK = zeros(size(delay));
for k=1:length(delay)            
  BER_MC_DQPSK(k) = c214_MCQPSKrun(N,Eb,...
       No,ChannelAttenuation,delay(k),0,0,0);
  disp(['Simulation ',...
       num2str(k*100/length(delay)),'% Complete']);
end
BER_T_DQPSK = 0.5*erfc(sqrt(EbNo))*ones(size(delay));
semilogy(delay,BER_MC_QPSK, 'o', delay,2*BER_T_QPSK, '-', ...
         delay,BER_MC_DQPSK,'o', delay,2*BER_T_DQPSK,'-')

xlabel('Delay (symbols)'); ylabel('Bit Error Rate'); 
legend('QPSK Estimate BER',  'QPSK Theoretical BER', ...
      'DQPSK Estimate BER', 'DQPSK Theoretical BER', ...
      'Location', 'northwest'); grid;
ylim([0.01, 1]);

% Phase Error
figure;
PhaseError = 0:10:90; 				% Phase Error at Receiver
Eb = 24; No = -50;       	       	% Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70; 			% dB
EbNo = 10.^((Eb-ChannelAttenuation-No)/10); 

BER_T_QPSK = 0.5*erfc(sqrt(EbNo)*ones(size(PhaseError)))/2;
N = round(100./BER_T_QPSK); 
BER_MC_QPSK = zeros(size(PhaseError)); 
for k=1:length(PhaseError)
  BER_MC_QPSK(k) = ex5_MCQPSKrun(N(k),Eb,No,ChannelAttenuation,0,0,PhaseError(k),0);
  disp(['Simulation ',num2str(k*100/length(PhaseError)),'% Complete']);
end

BER_T_DQPSK = 0.5*erfc(sqrt(EbNo)*ones(size(PhaseError)));
N = round(100./BER_T_DQPSK); 
BER_MC_DQPSK = zeros(size(PhaseError)); 
for k=1:length(PhaseError)
  BER_MC_DQPSK(k) = c214_MCQPSKrun(N(k),Eb,No,ChannelAttenuation,0,0,PhaseError(k),0);
  disp(['Simulation ',num2str(k*100/length(PhaseError)),'% Complete']);
end

semilogy(PhaseError,BER_MC_QPSK, 'o', PhaseError,2*BER_T_QPSK, '-', ...
         PhaseError,BER_MC_DQPSK,'o', PhaseError,2*BER_T_DQPSK,'-')
xlabel('Phase Error (Degrees)'); ylabel('Bit Error Rate'); 
legend('QPSK Estimate BER',  'QPSK Theoretical BER', ...
      'DQPSK Estimate BER', 'DQPSK Theoretical BER', ...
      'Location', 'northwest'); grid;

% Phase Error Std. Dev.
figure;
PhaseBias = 0; PhaseJitter = 0:2:30;
Eb = 24; No = -50;              				% Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70; 						% dB
EbNo = 10.^((Eb-ChannelAttenuation-No)/10); 

BER_T_QPSK = 0.5*erfc(sqrt(EbNo)*ones(size(PhaseJitter)))/2;
N = round(100./BER_T_QPSK); 
BER_MC_QPSK = zeros(size(PhaseJitter)); 
for k=1:length(PhaseJitter)
  BER_MC_QPSK(k) = ex5_MCQPSKrun(N(k),Eb,No,ChannelAttenuation,0,0,PhaseBias,PhaseJitter(k));
  disp(['Simulation ',num2str(k*100/length(PhaseJitter)),'% Complete']);
end

BER_T_DQPSK = 0.5*erfc(sqrt(EbNo)*ones(size(PhaseJitter)));
N = round(100./BER_T_DQPSK); 
BER_MC_DQPSK = zeros(size(PhaseJitter)); 
for k=1:length(PhaseJitter)
  BER_MC_DQPSK(k) = c214_MCQPSKrun(N(k),Eb,No,ChannelAttenuation,0,0,PhaseBias,PhaseJitter(k));
  disp(['Simulation ',num2str(k*100/length(PhaseJitter)),'% Complete']);
end

semilogy(PhaseJitter,BER_MC_QPSK, 'o', PhaseJitter,2*BER_T_QPSK, '-', ...
         PhaseJitter,BER_MC_DQPSK,'o', PhaseJitter,2*BER_T_DQPSK,'-')
xlabel('Phase Error Std. Dev. (Degrees)'); ylabel('Bit Error Rate'); 
legend('QPSK Estimate BER',  'QPSK Theoretical BER', ...
      'DQPSK Estimate BER', 'DQPSK Theoretical BER', ...
      'Location', 'northwest'); grid;
ylim([0.01, 0.1]);

% Symbol Timing Error Std. Dev.
figure;
SymJitter = 0:0.02:0.2;
Eb = 24; No = -50;              	% Eb (dBm) and No (dBm/Hz)
ChannelAttenuation = 70; 			% channel attenuation in dB
EbNo = 10.^((Eb-ChannelAttenuation-No)/10); 

BER_T_QPSK = 0.5*erfc(sqrt(EbNo)*ones(size(SymJitter)))/2;
N=round(100./BER_T_QPSK); 
BER_MC_QPSK = zeros(size(SymJitter)); 
for k=1:length(SymJitter)
  BER_MC_QPSK(k) = ex5_MCQPSKrun(N(k),Eb,No,ChannelAttenuation,0,SymJitter(k),0,0);
  disp(['Simulation ',num2str(k*100/length(SymJitter)),'% Complete']);
end

BER_T_DQPSK = 0.5*erfc(sqrt(EbNo)*ones(size(SymJitter)));
N=round(100./BER_T_DQPSK); 
BER_MC_DQPSK = zeros(size(SymJitter)); 
for k=1:length(SymJitter)
  BER_MC_DQPSK(k) = c214_MCQPSKrun(N(k),Eb,No,ChannelAttenuation,0,SymJitter(k),0,0);
  disp(['Simulation ',num2str(k*100/length(SymJitter)),'% Complete']);
end

semilogy(SymJitter,BER_MC_QPSK, 'o', SymJitter,2*BER_T_QPSK, '-', ...
         SymJitter,BER_MC_DQPSK,'o', SymJitter,2*BER_T_DQPSK,'-')
xlabel('Symbol Timing Error Std. Dev. (Symbols)'); ylabel('Bit Error Rate'); 
legend('QPSK Estimate BER',  'QPSK Theoretical BER', ...
      'DQPSK Estimate BER', 'DQPSK Theoretical BER', ...
      'Location', 'northwest'); grid;
ylim([0.01, 0.1]);
