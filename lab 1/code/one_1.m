% part a
clc, clearvars, close all

syms t;
T = 1;
xt = 2*cos(2*pi*t) + cos(6*pi*t);
N = 5;
t1 = -(T/2);
t2 = T/2;
F = fourierCoeff(t,xt,T,t1,t2,N);

FS_idx = -1*N:N;
figure; stem(FS_idx,F);
grid on; 
xlabel('N','FontSize',15); ylabel('a_{N}','FontSize',15); title('FS Coefficients plot')

%% 
% part b
clc, clearvars, close all

syms t; 
T = 1; t1 = -(T/2); t2 = T/2; N = 10;
T1 = 0.25;
xt = piecewise(t>=-(T1) & t<=T1, 1, T1<abs(t) & abs(t)<T/2 ,0);
F = fourierCoeff(t,xt,T,t1,t2,N);

FS_idx = -N:N;
figure; stem(FS_idx,F);
grid on;
xlabel('N','FontSize',15); ylabel('a_{N}','FontSize',15); title('FS Coefficients plot')
