function result = convolution(x, h)
    M = length(x);
    N = length(h);
    len = M + N - 1;
    result = zeros(1, len);
    
    for n = 1:len
        kmin = max(1, n - N + 1);
        kmax = min(M, n);
        for k = kmin:kmax
            result(n) = result(n) + x(k) * h(n - k + 1);
        end
    end
end