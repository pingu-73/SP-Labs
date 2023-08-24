n = -5:5;
u = (n >=-3) & (n<= 1);
u = 5*u;

xn = (-1).^n;

y = zeros(1, length(n));
y = conv(xn,u);
y_range = n(1) + (0:length(y)-1);

subplot(3,1,1); stem(n,u); grid on;
title('unit pulse seq from n = -3 to n =1');
xlabel('n'); ylabel('u[n]');

subplot(3,1,2); stem(n,xn); grid on;
title('x[n] = (-1)^n');
xlabel('n'); ylabel('x[n]');


subplot(3,1,3); stem(y_range, y); grid on;
xlabel('n'); ylabel('y[n]'); title("convolved signal");