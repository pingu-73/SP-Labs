n = -50:50;
xn  = (n==0);
N = 15;
index = 51:1:151;
imp_rep = movingAverage(15,xn,n);
y = conv(imp_rep, x);
subplot(3,1,1); stem(n, imp_rep);
xlabel('n'); ylabel('h[n]'); title('Impulse Response of moving average systems');

subplot(3,1,2); stem(n,x); xlabel('n'); ylabel('x[n]'); title('original signal q1.mat');

y = y(index);
subplot(3,1,3); stem(n,y);
xlabel('n'); ylabel('y[n]'); title('original signal');