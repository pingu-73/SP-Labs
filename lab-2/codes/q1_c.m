clc; clearvars; clear all;
load('q1.mat'); 
N = 10; 

MA = moving_average(x, N);

n = 1:length(x);
figure;

subplot(2,1,1);
plot(n, x, 'b', 'LineWidth', 1.5);
xlabel('n', 'FontSize', 15);
ylabel('x[n]', 'FontSize', 15);
title('Original Signal');

subplot(2,1,2);
plot(n, MA, 'r', 'LineWidth', 1.5);
xlabel('n', 'FontSize', 15);
ylabel('Trend', 'FontSize', 15);
title('Trend (Moving Average)');

sgtitle('Trend Analysis');