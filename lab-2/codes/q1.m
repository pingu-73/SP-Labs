% part-b
clc; clearvars; clear all
N = 5; n = 0:20; u = [1, ones(1, length(n)-1)]; 
MA = movingAverage(u,N);

subplot(2,1,1); stem(n, u, 'r', 'LineWidth', 1.5); xlabel('n', 'FontSize',15); ylabel('u[n]', 'FontSize',15); title('Input Signal (Unit Step)');