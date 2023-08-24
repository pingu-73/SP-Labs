n = 0:9;
x = rand([1 10]);

y = zeros(1, length(n));
u = (n >= 0) & (n <= 9);
u = 10*u;

y = convolution(u, x);
y_range = n(1) + (0:length(y)-1);

subplot(3, 1, 1); stem(n, u); grid on;
title('u[n] from n = 0 to n = 9 (length 10)');
xlabel('n'); ylabel('u[n]');

subplot(3, 1, 2); stem(n, x);
xlabel('n'); ylabel('x[n]');
title('random sequence');

subplot(3, 1, 3); stem(y_range, y);
xlabel('n'); ylabel('y[n]');
title('convolution of x[n] and u[n]');

%%

n = -4:5;
x = rand(1, 10);

y = zeros(1, length(n));
u = (n >= -4) & (n <= 5);
u = 10 * u;

y = convolution(x, u);
y_range = n(1) + (0:length(y)-1);

subplot(3, 1, 1); stem(n, u); grid on;
title('u[n] from n = -4 to n = 5 (length 10)');
xlabel('n'); ylabel('u[n]');

subplot(3, 1, 2); stem(n(1:length(x)), x);
xlabel('n'); ylabel('x[n]');
title('random sequence');

subplot(3, 1, 3); stem(y_range, y);
xlabel('n'); ylabel('y[n]');
title('convolution of x[n] and u[n]');