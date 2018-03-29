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
t_data=randi(2, 9600,1)' - 1;
symbol_size = 4;
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
    data = t_data(x:x+95);
    x=x+96;
    dec = encode(data, symbol_size, trellis);
    
    cext_data = transmitter(dec);

    %%
    % Channel

     % SNR

     o=1;
    for snr=0:2:50

    ofdm_sig=awgn(cext_data,snr,'measured'); % Adding white Gaussian Noise
    % figure;
    % index=1:80;
    % plot(index,cext_data,'b',index,ofdm_sig,'r'); %plot both signals
    % legend('Original Signal to be Transmitted','Signal with AWGN');


    %%
    %                   RECEIVER
    %%
    %Removing Cyclic Extension

    for i=1:64

        rxed_sig(i)=ofdm_sig(i+16);

    end


    %%
    % FFT

    ff_sig=fft(rxed_sig,64);

    %%
    % Pilot Synch%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


    for i=1:52

        synched_sig1(i)=ff_sig(i+6);

    end

    k=1;

    for i=(1:13:52)

        for j=(i+1:i+12);
            synched_sig(k)=synched_sig1(j);
            k=k+1;
        end
    end

    % scatterplot(synched_sig)


    %%
    % Demodulation
    dem_data= qamdemod(synched_sig,16);


    %% 
    % Decimal to binary conversion

    bin=de2bi(dem_data','left-msb');
    bin=bin';


    %%
    % De-Interleaving


    deintlvddata = matdeintrlv(bin,2,2); % De-Interleave
    deintlvddata=deintlvddata';
    deintlvddata=deintlvddata(:)';




    %%
    %Decoding data
    n=6;
    k=3;
    decodedata =vitdec(deintlvddata,trellis,5,'trunc','hard');  % decoding datausing veterbi decoder
    rxed_data=decodedata;

    %%
    % Calculating BER
    rxed_data=rxed_data(:)';
    errors=0;


    c=xor(data,rxed_data);
    errors=nnz(c);

    % for i=1:length(data)
    %     
    %        
    %     if rxed_data(i)~=data(i);
    %         errors=errors+1;     
    %      
    %     end
    % end


    BER(si,o)=errors/length(data);
    o=o+1;

     end % SNR loop ends here
     si=si+1;
end % main data loop

%%
% Time averaging for optimum results

for col=1:25;        %%%change if SNR loop Changed
    ber(1,col)=0;  
for row=1:100;
  
    
        ber(1,col)=ber(1,col)+BER(row,col);
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
