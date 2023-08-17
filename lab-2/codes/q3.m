clc; clearvars; clear all;
n_values = 0:20;

x_a = 5 * (heaviside(n_values) - heaviside(n_values - 20));
y_a = digital_differentiator(x_a);

u_n = heaviside(n_values);
u_n_minus_10 = heaviside(n_values - 10);
u_n_minus_20 = heaviside(n_values - 20);
x_b = n_values .* (u_n - u_n_minus_10) + (20 - n_values) .* (u_n_minus_10 - u_n_minus_20);
y_b = digital_differentiator(x_b);


x_c = sin(pi * n_values) .* (u_n - heaviside(n_values - 100));
y_c = digital_differentiator(x_c);


subplot(3, 1, 1);
stem(n_values, x_a, 'b', 'filled', 'DisplayName', 'Input signal');
hold on;
stem(n_values, y_a, 'r', 'filled', 'DisplayName', 'Output signal');
title('Part a: x[n] = 5(u[n] - u[n-20])');
xlabel('n');
ylabel('Amplitude');
legend('Location', 'best');
grid on;
hold off;

subplot(3, 1, 2);
stem(n_values, x_b, 'b', 'filled', 'DisplayName', 'Input signal');
hold on;
stem(n_values, y_b, 'r', 'filled', 'DisplayName', 'Output signal');
title('Part b: x[n] = n(u[n] - u[n-10]) + (20-n)(u[n-10] - u[n-20])');
xlabel('n');
ylabel('Amplitude');
legend('Location', 'best');
grid on;
hold off;

subplot(3, 1, 3);
stem(n_values, x_c, 'b', 'filled', 'DisplayName', 'Input signal');
hold on;
stem(n_values, y_c, 'r', 'filled', 'DisplayName', 'Output signal');
title('Part c: x[n] = sin(\pi n)(u[n] - u[n-100])');
xlabel('n');
ylabel('Amplitude');
legend('Location', 'best');
grid on;
hold off;

sgtitle('Digital Differentiator Output for Different Inputs');