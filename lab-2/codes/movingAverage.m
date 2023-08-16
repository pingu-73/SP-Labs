function MA = movingAverage(x_k,N)
    MA = zeros(size(x_k));
    for n = N:length(x_k)
        MA = (1/N)*sum(x_k(n-N+1:n));
    end
end