function [cext_data] = transmitter(dec)
    %transmitter : Perform the transmitter side logic for decimal symbols ->
    %data to be put into channel.

    %%
    %16-QAM Modulation

    M=16;
    y = qammod(dec,M);
    % scatterplot(y);


    %%
    % Pilot insertion

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


    %%
    % IFFT

    ifft_sig=ifft(pilt_data',64);


    %%
    % Adding Cyclic Extension

    cext_data=zeros(80,1);
    cext_data(1:16)=ifft_sig(49:64);
    for i=1:64

        cext_data(i+16)=ifft_sig(i);

    end
end

