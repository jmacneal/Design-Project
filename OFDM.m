
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

close all
clear all
clc


%%
% Generating and coding data
num_packets = 100; % Number of packets to transmit
qam_size = 16; % qam symbol size (i.e., 16-QAM)
symbol_size = log2(qam_size); % bits per symbol
packet_size = 24; %packet size, in symbols
num_bits = num_packets*packet_size*symbol_size;
prefix = 16; %number of symbols in cyclic prefix
fft_size = 48; %N-point fft/ifft
input_data=randi(2, num_bits,1)' - 1;
%%
% Convolutionally encoding data 
constlen=7;
codegen = [171 133];    % Polynomial
trellis = poly2trellis(constlen, codegen);
x=1;
si=1; %for BER rows
%%


for d=1:100
    data = input_data(x:x+95);
    x=x+96;
    % Encoded Data
    encoded_data = encode(data, symbol_size, trellis);
    % Cyclically Prefixed modulated data, ready for transmission
    modulated_data = transmitter(encoded_data, qam_size, prefix, fft_size);

    o=1;
    % Signal-to-Noise Ratio
    for snr=0:2:50
       %% Channel Model
        ofdm_sig=awgn(modulated_data,snr,'measured'); % Adding white Gaussian Noise
       % figure;
       % index=1:80;
       % plot(index,cext_data,'b',index,ofdm_sig,'r'); %plot both signals
       % legend('Original Signal to be Transmitted','Signal with AWGN');

        % Received data from channel, demodulated
        demodulated_data = receiver(ofdm_sig, qam_size, prefix, fft_size);
        % Decoded Data
        rxed_data=decode(demodulated_data, trellis);

        %% Calculating BER
        rxed_data=rxed_data(:)';
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
ber = zeros(1,25);
for col=1:25        %%%change if SNR loop Changed
    for row=1:100
        ber(col)=ber(col)+BER(row,col);
    end
end
ber=ber./100; 

%%
figure
i=0:2:48;
semilogy(i,ber);
title('BER vs SNR');
ylabel('BER');
xlabel('SNR (dB)');
grid on