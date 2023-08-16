syms t;
T = 1; N = 10; t1 = -T/2; t2 = T/2; T1 = 0.1; time_grid = -0.5:0.01:0.5;
xt = piecewise(((-T/2<t)&(t<=-T1)),0,((-T1<=t)&(t<=T1)),1,((T1<=t)&(t<T/2)),0); 
F = fourierCoeff(t,xt,T,t1,t2,N);
xReconstructed = partialfouriersum(F,T,time_grid);
plot(time_grid,xReconstructed); grid on; xlabel('t', FontSize = 15); ylabel('reconstructed x(t)', FontSize = 15); title('Partial Fourier Sum (for N=10)');