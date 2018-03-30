
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
input_data=randi(2, 9600,1)' - 1;
num_symbols = 16;
symbol_size = log2(num_symbols);
prefix = 16;
fft_size = 48;
%%
% Convolutionally encoding data 
constlen=7;
codegen = [171 133];    % Polynomial
trellis = poly2trellis(constlen, codegen);
% Encoded Data
x=1;
si=1; %for BER rows
%%


for d=1:100
    data = input_data(x:x+95);
    x=x+96;
    encoded_data = encode(data, symbol_size, trellis);
    cext_data = transmitter(encoded_data, num_symbols, prefix, fft_size);

    o=1;
    % Signal-to-Noise Ratio
    for snr=0:2:50
       %% Channel Model
        ofdm_sig=awgn(cext_data,snr,'measured'); % Adding white Gaussian Noise
       % figure;
       % index=1:80;
       % plot(index,cext_data,'b',index,ofdm_sig,'r'); %plot both signals
       % legend('Original Signal to be Transmitted','Signal with AWGN');

        dem_data = receiver(ofdm_sig, num_symbols, prefix, fft_size);
        rxed_data=decode(dem_data, trellis);

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