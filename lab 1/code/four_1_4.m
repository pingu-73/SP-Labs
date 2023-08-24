clc, clearvars, clear all
syms t;
T = 1; t1 = -T/2; t2 = T/2; N = 10;

% part-a
xt = piecewise(t>-1/4 & t<0, -t, t>0 & t<1/4, t, 1/4 < abs(t) & abs(t)<T/2,0);
F = fourierCoeff(t, xt, T, t1, t2, N); index = -N:N; figure(1); stem(index, F); grid on;
xlabel('k', 'FontSize',15); ylabel('a_k', 'FontSize',15); title('fourier series coefficients for part-a');


% part-b
xt_ = piecewise(t>-1/4 & t<1/4, t, t<-1/4 & t>t1, 0, t>1/4 & t<t2, 0);
F_ = fourierCoeff(t,xt_,T,t1,t2,N); figure(2); stem(index, -1j*F_); grid on;
xlabel('k', 'FontSize',15); ylabel('Im(a_k)', 'FontSize',15); title('Fourier Series Coeff of part-b'); 