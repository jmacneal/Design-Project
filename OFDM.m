
% Modified by Malcolm and Jake
% Based on OFDM code by Ihsan Ullah, 
% coding used: Convolutional coding
% Modulation: 256-QAM
% Cylic Extension: 25%(16)

%close all
%clear all
%clc

%% HDL Params
tx_out = 0;
rx_in  = 0;
Fc     = 1e4; % Carrier Wave (Baseband) Frequency
Fs     = 1e6; % Sampling Frequency
sym_duration = 5; %Hold each symbol for 100/Fs seconds
%ber = zeros(51, 1,25);
%alphas = [];
%for fft_len = 130:1:147

%%
% Generating and coding data
num_packets = 20; % Number of packets to transmit
qam_size = 256; % qam symbol size (i.e., 16-QAM)
symbol_size = log2(qam_size); % bits per symbol
num_subs = 512; %packet size, in symbols
packet_bits = num_subs * symbol_size;
num_bits = num_packets*num_subs*symbol_size;
prefix = 0.25*num_subs; %number of symbols in cyclic prefix
rand_stream = RandStream('mt19937ar', 'Seed', 0); %Reproducable random stream
input_data=randi(rand_stream, [0 1], num_bits,1)';

%%
% Convolutionally encoding data 
constlen=7;
codegen = [171 133];    % Polynomial
trellis = poly2trellis(constlen, codegen);

encoding_ratio = trellis.numOutputSymbols/trellis.numInputSymbols;

fft_size = encoding_ratio*num_subs; %N-point fft/ifft
alpha = num_subs*encoding_ratio/fft_size;
%alphas(fft_len - 128) = alpha;

snr_range = 0:1:49; % Calculate SNR from 0->49 dB, in steps of 1dB
x=1; % iterate over input_data bits
BER = zeros(num_packets, size(snr_range,2));


for d=1:num_packets
    data = input_data(x:x+packet_bits-1);
    x=x+packet_bits;
    %% Encoded Data
    encoded_data = encode(data, symbol_size, trellis);
    %% Cyclically Prefixed modulated data, ready for transmission
    modulated_data = ofdm_mod(encoded_data, qam_size, prefix, fft_size);

    snr_index = 1;
    %% Signal-to-Noise Ratio
    for snr=snr_range
       %% Channel Model
        ofdm_sig=awgn(modulated_data,snr,'measured', 'db'); % Adding white Gaussian Noise

        %r = zeros(128, 10);
        %for i = 1:10

        %% Received data from channel, demodulated
        demodulated_data = ofdm_demod(ofdm_sig, qam_size, prefix, fft_size, alpha);
%         r(:,i) = demodulated_data;

        %end
        %% Decoded Data
        rxed_data=decode(demodulated_data, symbol_size, trellis);

        %% Calculating BER
        error_cnt=nnz(xor(data,rxed_data));

        BER(d,snr_index)=error_cnt/length(data);
        snr_index = snr_index + 1;
     end % SNR loop ends here
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
% for col=1:25        %%%change if SNR loop Changed
%     for row=1:100
%         ber(fft_len - 128, col)=ber(fft_len - 128, col)+BER(fft_len - 128, row,col);
%     end
% end
% 
% end

%%
BER;
figure
semilogy(snr_range,ber);
title('BER vs SNR');
ylabel('BER');
% p = [];
% for ite = 1:16
% i=0:2:48;
%     p(ite) = semilogy(i,ber(ite, :));
%     hold on;
% end
% hold off;
% title('Bit Error Rate vs. Signal to Noise Ratio for OFDM Data Transmission');
% ylabel('Bit Error Rate (%)');
xlabel('SNR (dB)');

grid on