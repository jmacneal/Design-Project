% Dencode decimal data using viterbi algorithm
% Returns 
function decoded_data = decode(dec_data, trellis);
    %% 
    % Decimal to binary conversion
    bin=de2bi(dec_data','left-msb');
    bin=bin';


    %%
    % De-Interleaving
    deintlvddata = matdeintrlv(bin,2,2); % De-Interleave
    deintlvddata=deintlvddata';
    deintlvddata=deintlvddata(:)';

    %%
    %Decoding data
    decoded_data = vitdec(deintlvddata,trellis,5,'trunc','hard');  % decoding data using veterbi decoder
end


