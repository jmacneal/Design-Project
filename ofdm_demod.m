%ofdm_demod : Remove Cyclic Extension, FFT, Demodulate OFDM into encoded symbols
function [demodulated_data] = ofdm_demod(signal, num_symbols, prefix, fft_size, alpha)
    %Removing Cyclic Extension
    signal_size = size(signal,1);
    rxed_sig = zeros(signal_size, 1);
    for i=1:signal_size-prefix
        rxed_sig(i)=signal(i+prefix);
    end

    %%
    % FFT
    ff_sig=fft(rxed_sig,fft_size);

    % Remove alpha (null) subcarriers 
    ff_sig = ff_sig(1:alpha*fft_size);
    %%
    % Demodulation
    demodulated_data= qamdemod(ff_sig, num_symbols, 'UnitAveragePower', false);
end
