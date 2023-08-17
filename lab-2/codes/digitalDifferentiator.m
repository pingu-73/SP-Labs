function y = digitalDifferentiator(n,xn)
    y = zeros(1, length(n));
    y(1) = xn(1);
    for k = 2:length(n)
        y(k) = xn(k) - xn(k-1);
    end
end