function F = fourierCoeff(t, xt, T, t1, t2, N)
F = zeros(2*N+1, 1);
    
k = 1;
while k <= 2*N+1
    F(k) = 1/T * int(xt * exp(-1j * (k - N - 1) * 2 * pi * t / T), t, t1, t2);
    k = k + 1;
end
end
