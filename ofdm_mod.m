% ofdm_mod : Modulate symbols into OFDM, IFFT, add Cyclic Extension

function [cext_data] = ofdm_mod(encoded_data, num_symbols, prefix, ifft_size)
    %% N-QAM Modulation
    y = qammod(encoded_data,num_symbols, 'UnitAveragePower', false);
    
    %% IFFT
    ifft_sig=ifft(y,ifft_size);
    % Remove signal corresponding to extra frequencies (for SEFDM)
    ifft_sig = ifft_sig(1:size(y));

    %% Adding Cyclic Extension    
    prefix_size = prefix + ifft_size;
    cext_data=zeros(prefix_size,1);
    cext_data(1:prefix)=ifft_sig(end-prefix+1:end);
    for i=1:size(ifft_sig,1)
        cext_data(i+prefix)=ifft_sig(i);
    end
end

