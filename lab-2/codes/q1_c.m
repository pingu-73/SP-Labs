clc; clearvars; clear all;
load('q1.mat');
n = -50:50;
ind = [3 5 7 15 20 25];
subplot(3,3,2); stem(n,x);
xlabel('n'); ylabel('x[n]'); title('Original signal q1.mat')
for k = 1:length(ind)
    N = ind(k);
    MA = movingAverage(N,x,n);
    subplot(3,3,k+3);
    stem(n,MA);
    xlabel('n'); ylabel('y[n]'); title(['Output signal N=', num2str(N)]);
end