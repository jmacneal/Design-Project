function y = worner_fft(x)
    N= length(x); 
    x = bitrevorder(x);
    q = log2(N);

    exp_lt = exp_lookup();

    for j = 1:q
        m = 2^(j-1);
        d = exp_lt(m).^(0:m-1);
        for k = 1:2^(q-j)
              s = 2*(k-1)*m+1;   % start-index
              e = 2*k*m;             % end-index
              r = s + (e-s+1)/2;  % middle-index
              y_top       = x(s:r-1);
              y_bottom = x(r:e);
              z = d .* y_bottom;
              y = [y_top + z, y_top - z];
              x(s:e) = y;
        end
    end
end
