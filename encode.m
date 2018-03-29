% Encode binary data using convolutional encoder
% Returns matrix, each row is a subcarrier input array of symbols (to
% modulation)
function encoded_data = encode(binary_data, symbol_size, trellis)   
    %%
    % Convolutionally encoding data 
    codedata = convenc(binary_data, trellis);



    %%
    %Interleaving coded data

    length=size(codedata,2);
    j=length/symbol_size;
    matrix=reshape(codedata,j,symbol_size);

    intlvddata = matintrlv(matrix',2,2)'; % Interleave.
    intlvddata=intlvddata';


    %%
    % Binary to decimal conversion

    dec=bi2de(intlvddata','left-msb');
    encoded_data = dec;
end