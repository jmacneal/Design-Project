function [unpiloted_data] = remove_pilots(data, step)
    %% Insertion of Pilot Waves (Guard Intervals)
    j = 1;
    for i=1:1:size(data,1)
        if(mod(i,step) ~= 1)
            unpiloted_data(j) = data(i);
            j = j + 1;
    end
end