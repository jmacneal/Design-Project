function [cext_data] = transmitter(encoded_data, num_symbols, prefix, ifft_size)
    %transmitter : Perform the transmitter side logic for decimal symbols ->
    %data to be put into channel.

    %% 16-QAM Modulation
    y = qammod(encoded_data,num_symbols);

    %% IFFT
    ifft_sig=ifft(y,ifft_size);

    %% Adding Cyclic Extension    
    prefix_size = prefix + ifft_size;
    cext_data=zeros(prefix_size,1);
    cext_data(1:prefix)=ifft_sig(end-prefix+1:end);
    for i=1:size(ifft_sig,1)
        cext_data(i+prefix)=ifft_sig(i);
    end
end

