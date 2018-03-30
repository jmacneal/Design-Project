%receiver : Receive data (from AWGN channel or direct), remove CRC,
%demodulate
function [demodulated_data] = receiver(signal);


    %%
    %                   RECEIVER
    %%
    %Removing Cyclic Extension

    for i=1:64
        rxed_sig(i)=signal(i+16);
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
        for j=(i+1:i+12)
            synched_sig(k)=synched_sig1(j);
            k=k+1;
        end
    end

    % scatterplot(synched_sig)


    %%
    % Demodulation
    demodulated_data= qamdemod(synched_sig,16);
end
