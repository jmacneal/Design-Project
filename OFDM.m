
% Modified by Malcolm and Jake, maybe.
% OFDM Code
% Author: Ihsan Ullah, 
%         Ms-55 Electrical,
%         College of EME, 
%         NUST Pakistan
% No.of Carriers: 64
% coding used: Convolutional coding
% Single frame size: 96 bits
% Total no. of Frames: 100
% Modulation: 16-QAM
% No. of Pilots: 4
% Cylic Extension: 25%(16)

%close all
%clear all
clc


%%
% Generating and coding data
num_packets = 100; % Number of packets to transmit
qam_size = 256; % qam symbol size (i.e., 16-QAM)
symbol_size = log2(qam_size); % bits per symbol
packet_size = 128; %packet size, in symbols
packet_bits = packet_size * symbol_size;
num_bits = num_packets*packet_size*symbol_size;
prefix = 16; %number of symbols in cyclic prefix
fft_size = 260; %N-point fft/ifft
rand_stream = RandStream('mt19937ar', 'Seed', 0); %Reproducable random stream
input_data=randi(rand_stream, [0 1], num_bits,1)'; 
guard_interval_ratio = 16; % Insert a guard interval every 16 symbols
%%
% Convolutionally encoding data 
constlen=7;
codegen = [171 133];    % Polynomial
trellis = poly2trellis(constlen, codegen);

encoding_ratio = trellis.numOutputSymbols/trellis.numInputSymbols;
alpha = packet_size*encoding_ratio/fft_size;


snr_range = 0:1:48; % Calculate SNR from 0->48 dB, in steps of 1dB
x=1; % iterate over input_data bits
si=1; %for BER rows
%%
for d=0:num_packets-1
    data = input_data(x:x+packet_bits-1);
    x=x+packet_bits;
    % Encoded Data
    encoded_data = encode(data, symbol_size, trellis);
    % Cyclically Prefixed modulated data, ready for transmission
    modulated_data = transmitter(encoded_data, qam_size, prefix, fft_size);

    o=1;
    % Signal-to-Noise Ratio
    for snr=snr_range
       %% Channel Model
        ofdm_sig=awgn(modulated_data,snr,'measured', 'db'); % Adding white Gaussian Noise
       % figure;
       % index=1:80;
       % plot(index,cext_data,'b',index,ofdm_sig,'r'); %plot both signals
       % legend('Original Signal to be Transmitted','Signal with AWGN');

        % Received data from channel, demodulated
        demodulated_data = receiver(ofdm_sig, qam_size, prefix, fft_size, alpha);
        % Decoded Data
        rxed_data=decode(demodulated_data, symbol_size, trellis);

        %% Calculating BER
        error_cnt=0;
        c=xor(data,rxed_data);
        error_cnt=nnz(c);

        BER(si,o)=error_cnt/length(data);
        o=o+1;
     end % SNR loop ends here
     si=si+1;
end % main data loop



%%
% Time averaging for optimum results
num_cols = size(snr_range,2);
ber = zeros(1,num_cols);
for col=1:num_cols        %%%change if SNR loop Changed
    for row=1:num_packets
        ber(col)=ber(col)+BER(row,col);
    end
end
ber=ber./num_packets; 

%%
figure
semilogy(snr_range,ber);
title('BER vs SNR');
ylabel('BER');
xlabel('SNR (dB)');
grid on