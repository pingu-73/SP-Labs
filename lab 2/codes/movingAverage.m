function y = movingAverage(N, xn, n)
    sum = zeros(1);
    y = zeros(1, length(n));
    for k = 1:length(n)
        if k<=N 
            sum = sum+xn(k);
            y(k) = sum/N;
        end
        if k>N
            sum = sum + xn(k) - xn(k-N);
            y(k) = sum/N;
        end
    end
end