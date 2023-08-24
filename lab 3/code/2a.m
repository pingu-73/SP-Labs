n = 1:10;
x1 = rand([1 10]);
del = (n==3);

y = zeros(1, length(n));
y_lin = conv(x1,del);
y_range = n(1) + (0:length(y_lin)-1);

y_cir = cconv(x1,del, length(n));
y_CirRange = n(1) + (0:length(y_cir)-1);


subplot(4, 1, 1); stem(n, x1);
xlabel('n'); ylabel('x_{1}[n]');
title('gaussian sequence');

subplot(4, 1, 2); stem(n, del);
xlabel('n'); ylabel('x_{2}[n]');
title('dirac(x-3)');

subplot(4, 1, 3); stem(y_range, y_lin);
xlabel('n'); ylabel('y[n]');
title('linear convolution');

subplot(4, 1, 4); stem(y_CirRange, y_cir);
xlabel('n'); ylabel('y[n]');
title('circular convolution');