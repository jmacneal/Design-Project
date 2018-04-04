function [piloted_data] = insert_pilots(data, step)
    %% Insertion of Pilot Waves
    length = size(data,1);
    num_pilots = 1 + floor(length/(step-1));
    piloted_data = zeros(length + num_pilots,1);
    j = 1;
    for i=1:1:size(piloted_data,1)
        if(mod(i,step) == 1)
            piloted_data(i) = 0;
        else
            piloted_data(i) = data(j);
            j = j + 1;
        end
    end
end