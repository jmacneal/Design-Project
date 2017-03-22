%% Generate lookup table for exponential function.
% We need to have values for the function exp(-pi * i / m) where m is a
% natural number in the range 1:(N/2) where N is the length of our input
% vector. Therefore for an 8 value vector FFT we need 1:7, for instance.

% SET THIS PARAMETER
FFT_SIZE = 16;

m = 1:(FFT_SIZE/2);

A = exp(-pi * 1i ./ m);

fileid = fopen('exp_lookup.m', 'w');
fprintf(fileid, 'function [ exponential_lookup_table ] = exp_lookup ( )\n');
fprintf(fileid, '    exponential_lookup_table = [\n');

for i = 1:length(m)
    fprintf(fileid, '        %f\n', A(i));
end;
fprintf(fileid, '    ];\n');

fprintf(fileid, 'end');

