n = -10:10;
y = zeros(1, length(n));
u = (n >= 0) & (n <= 9);
u = 10*u;
u2 = (n>= -4) & (n <= 5);
u2 = 10*u2;

y = conv(u, u2);
y_range = n(1) + (0:length(y)-1);

subplot(3, 1, 1); stem(n, u); grid on;
title('u[n] from n = 0 to n = 9 (length 10)');
xlabel('n'); ylabel('y[n]');

subplot(3, 1, 2); stem(n, u2);
xlabel('n'); ylabel('y[n]');
title('u[n] n = -4 to n = 5 (length 10)');

subplot(3, 1, 3); stem(y_range, y);
xlabel('n'); ylabel('y[n]');
title('convolved of u and u2');