n = -10:10;
y = zeros(1, length(n));
u = (n>=0) & (n<=3);
u = 4*u;
y = conv(u,u);
y_range = n(1) + (0:length(y)-1);

subplot(2,2,1); stem(n,u); grid on;
xlabel("n"); ylabel('y[n]'); title("u[n] at n = 0 to n = 3 length 4");

subplot(2,2,2); stem(y_range, y); grid on;
xlabel('n'); ylabel('y[n]'); title("1st convolution");

y_final = conv(y, u);
y_Frange = n(1) + (0:length(y_final)-1);
subplot(2,2,3); stem(y_Frange, y_final); grid on;
xlabel('n'); ylabel('y[n]'); title("convoluting again");