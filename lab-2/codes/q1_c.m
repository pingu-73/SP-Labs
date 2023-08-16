clc; clearvars; clear all;
load('q1.mat');

N = 10; 

MA = moving_average(s, N);

n = 1:length(s);
figure;

subplot(2,1,1);
plot(n, s, 'b', 'LineWidth', 1.5);
xlabel('n', 'FontSize', 15);
ylabel('s[n]', 'FontSize', 15);
title('Original Signal');

subplot(2,1,2);
plot(n, trend, 'r', 'LineWidth', 1.5);
xlabel('n', 'FontSize', 15);
ylabel('Trend', 'FontSize', 15);
title('Trend (Moving Average)');

sgtitle('Trend Analysis');