n = 0:20;
xn = sin(2*pi*0.05*n);

n2 = -18:14;
x2 = (-1).^n2;

n3 = -18:20;
y = zeros(1, length(n3));
y = conv(xn,x2);
y_range = n2(1) + (0:length(y)-1);

subplot(3,1,1); stem(n, xn); grid on;
title('x_{1}[n] = Sin(2*pi*f*n)');
xlabel('n'); ylabel('x_{1}[n]');

subplot(3,1,2); stem(n2, x2); grid on;
title('x_{2}[n] = (-1)^n');
xlabel('n'); ylabel('x_{2}[n]');

subplot(3,1,3); stem(y_range, y); grid on;
title('convolution graph');
xlabel('n'); ylabel('y[n]');