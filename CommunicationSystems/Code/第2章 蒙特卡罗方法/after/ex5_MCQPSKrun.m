% file c10_MCQPSKrun.m
% Software given here is to accompany the textbook: W.H. Tranter, 
% K.S. Shanmugan, T.S. Rappaport, and K.S. Kosbar, Principles of 
% Communication Systems Simulation with Wireless Applications, 
% Prentice Hall PTR, 2004.
%
function BER_MC=ex5_MCQPSKrun(N,Eb,No,ChanAtt,...
	TimingBias,TimingJitter,PhaseBias,PhaseJitter)
fs = 1e+6;       					    % sampling Rate (samples/second)
SymRate = 1e+5;  					    % symbol rate (symbols/second)
Ts = 1/fs;							    % sampling period
TSym = 1/SymRate;					    % symbol period
SymToSend = N;   					    % symbols to be transmitted
ChanBW = 4.99e+5;					    % bandwidth of channel (Hz)
MeanCarrierPhaseError = PhaseBias;		% mean of carrier phase		  
StdCarrierPhaseError = PhaseJitter;		% stdev of phese error    
MeanSymbolSyncError = TimingBias;		% mean of symbol sync error
StdSymbolSyncError = TimingJitter;		% stdev of symbol sync error
ChanGain = 10^(-ChanAtt/20);			% channel gain (linear units)
TxBitClock = Ts/2;						% transmitter bit clock
RxBitClock = Ts/2;						% reciever bit clock
%
%  Standard deviation of noise and signal amplitude at receiver input.
%
RxNoiseStd = sqrt((10^((No-30)/10))*(fs/2));		% stdev of noise
TxSigAmp = sqrt(10^((Eb-30)/10)*SymRate);			% signal amplitude
%
% Allocate some memory for probes.
%
SampPerSym = fs/SymRate;
probe1 = zeros((SymToSend+1)*SampPerSym,1);
probe1counter = 1;
probe2 = zeros((SymToSend+1)*SampPerSym,1);
probe2counter = 1;
%
% Counters to keep track of how many symbols have have been sent.
% 
TxSymSent = 1;
RxSymDemod = 0;
%
% Buffers that contain the transmitted and received data.
%
[unused,SourceBitsI] = random_binary(SymToSend,1);
[unused,SourceBitsQ] = random_binary(SymToSend,1);
%
% Encode the transmitted data.
%
TxBitsI = SourceBitsI;
TxBitsQ = SourceBitsQ;

%
% Make a complex data stream of the I and Q bits.
%
TxBits = ((TxBitsI*2)-1)+(sqrt(-1)*((TxBitsQ*2)-1));
%
RxIntegrator = 0;					% initialize receiver integrator
TxBitClock = 2*TSym;				% initialize transmitter
%
% Design the channel filter, and create the filter state array.
%
[b,a] = butter(2,ChanBW/(fs/2));
b=[1]; a=[1];									% filter bypassed 
[junk,FilterState]=filter(b,a,0);
%
% Begin simulation loop.
%
while TxSymSent < SymToSend
   % Update the transmitter's clock, and see
   % if it is time to get new data bits
   TxBitClock=TxBitClock+Ts;
   if TxBitClock > TSym
      % Time to get new bits
      TxSymSent=TxSymSent+1;
      % We don't want the clock to increase off
      % to infinity, so subtract off an integer number
      % of Tb seconds
      TxBitClock=mod(TxBitClock,TSym);
      % Get the new bit, and scale it up appropriately.
      TxOutput=TxBits(TxSymSent)*TxSigAmp;
   end
   %
   % Pass the transmitted signal through the channel filter.
   %
   [Rx,FilterState]=filter(b,a,TxOutput,FilterState);
   %
   % Add white Gaussian noise to the signal.
   %
   Rx=(ChanGain*Rx)+(RxNoiseStd*(randn(1,1)+sqrt(-1)*randn(1,1)));
   %
   % Phase rotation due to receiver carrier synchronization error.
   %
   PhaseRotation = exp(sqrt(-1)*2*pi*...
       (MeanCarrierPhaseError+(randn(1,1)*StdCarrierPhaseError))/360);
   Rx=Rx*PhaseRotation;
   probe1(probe1counter)=Rx; probe1counter=probe1counter+1;
   %
   % Update the Integrate and Dump Filter at the receiver.
   %
   RxIntegrator = RxIntegrator+Rx;
   probe2(probe2counter) = RxIntegrator;
   probe2counter = probe2counter+1;
   %
   % Update the receiver clock, to see if it is time to
   % sample and dump the integrator.
   %
   RxBitClock = RxBitClock+Ts;
   RxTSym = TSym*(1+MeanSymbolSyncError+(StdSymbolSyncError*randn(1,1)));
   if RxBitClock > RxTSym					% time to demodulate symbol
      RxSymDemod = RxSymDemod+1;
      RxBitsI(RxSymDemod) = round(sign(real(RxIntegrator))+1)/2;
      RxBitsQ(RxSymDemod) = round(sign(imag(RxIntegrator))+1)/2;
      RxBitClock = RxBitClock - TSym;	    % reset receive clock
      RxIntegrator = 0;						% reset integrator
   end
end
%
% Decoder.
%
SinkBitsI = RxBitsI;
SinkBitsQ = RxBitsQ;

%          
% Look for best time delay between input and output for 100 bits.
%
[C,Lags] = vxcorr(SourceBitsI(10:110),SinkBitsI(10:110));
[MaxC,LocMaxC] = max(C);
BestLag = Lags(LocMaxC);
%
% Adjust time delay to match best lag
%
if BestLag > 0
    SourceBitsI = SourceBitsI(BestLag+1:length(SourceBitsI));
    SourceBitsQ = SourceBitsQ(BestLag+1:length(SourceBitsQ));
elseif BestLag < 0
    SinkBitsI = SinkBitsI(-BestLag+1:length(SinkBitsI));
    SinkBitsQ = SinkBitsQ(-BestLag+1:length(SinkBitsQ));
end
%
% Make all arrays the same length.
%
TotalBits = min(length(SourceBitsI),length(SinkBitsI));
TotalBits = TotalBits-20;
SourceBitsI = SourceBitsI(10:TotalBits);
SourceBitsQ = SourceBitsQ(10:TotalBits);
SinkBitsI = SinkBitsI(10:TotalBits);
SinkBitsQ = SinkBitsQ(10:TotalBits);
%
% Find the number of errors and the BER.
%
Errors = sum(SourceBitsI ~= SinkBitsI) + sum(SourceBitsQ ~= SinkBitsQ);
BER_MC = Errors/(2*length(SourceBitsI));
% End of function file.
