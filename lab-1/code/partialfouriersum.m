function y = partialfouriersum(A,T,time_grid)
y = zeros(size(time_grid)); N = (length(A)-1)/2;
for k = -N:N 
    y = y+A(k+N+1)*exp(j*k*(2*pi*time_grid)/T);
end
end