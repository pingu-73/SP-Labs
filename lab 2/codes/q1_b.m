clc; clearvars;
n = -40:1:40;
xn = (n>=0);
N = 10;
MA = movingAverage(N, xn, n);
subplot(2,1,1); stem(n, xn);
xlabel('n'); ylabel('u[n]'); title('Unit Step Signal');

subplot(2,1,2); stem(n,MA, 'r');
xlabel('n'); ylabel('y[n]'); title('Unit Step Response of moving average system');