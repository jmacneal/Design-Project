function y = worner_ifft(x)
    n = length(x);
    x = bitrevorder(x);
    q = round(log(n)/log(2));
    exp_lt = exp_lookup();

    for j = 1:q
        m = 2^(j-1);
        d = exp_lt(m).^(0:m-1);
        k = 1:2^(q-j);
        for k =  1:2^(q-j)
            s = (k-1)*2*m+1; % start-index
            e = k*2*m; % end-index
            r = s + (e-s+1)/2; % middle-index
            y_top = x(s:(r-1));
            y_bottom = x(r:e);
            z = d .* y_bottom;
            y = [y_top + z, y_top - z];
            x(s:e) = y;
        end
    end
end