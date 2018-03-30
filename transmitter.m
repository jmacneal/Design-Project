function [cext_data] = transmitter(encoded_data, num_symbols, prefix, ifft_size)
    %transmitter : Perform the transmitter side logic for decimal symbols ->
    %data to be put into channel.

    %% 16-QAM Modulation
    y = qammod(encoded_data,num_symbols);

    %% Pilot insertion
    pilt=3+3j;
    k=1;
    for i=(1:13:52)
        pilt_data1(i)=pilt;
        for j=(i+1:i+12);
            pilt_data1(j)=y(k);
            k=k+1;
        end
    end

    pilt_data1=pilt_data1';   % size of pilt_data =52
    pilt_data(1:52)=pilt_data1(1:52);    % upsizing to 64
    pilt_data(13:64)=pilt_data1(1:52);   % upsizing to 64

    for i=1:52

        pilt_data(i+6)=pilt_data1(i);

    end
    
    %% IFFT
    ifft_sig=ifft(pilt_data',ifft_size);

    %% Adding Cyclic Extension    
    prefix_size = prefix + ifft_size;
    cext_data=zeros(prefix_size,1);
    cext_data(1:prefix)=ifft_sig(end-prefix+1:end);
    for i=1:size(ifft_sig,1)
        cext_data(i+prefix)=ifft_sig(i);
    end
end

