% part-b
clc; clearvars; close all;

N = 5; n = 0:20; u = [1, ones(1, length(n)-1)];
MA = movingAverage(u, N);
analytical_output = conv(u, ones(1, N) / N, 'same');

subplot(3,1,1); stem(n, u, 'r');
xlabel('n', 'FontSize', 15); ylabel('u[n]', 'FontSize', 15); title('Input Signal (Unit Step)');

subplot(3,1,2); stem(n, MA, 'b');
xlabel('n', 'FontSize', 15); ylabel('y[n]', 'FontSize', 15); title('Output Signal (Moving Average)');


subplot(3,1,3); stem(n, analytical_output, 'black'); 
xlabel('n', 'FontSize', 15); ylabel('y[n]', 'FontSize', 15); title('Analytical Moving Average');

sgtitle('Moving Average System');

% disp('Calculated Output (Moving Average) Values:'); 
% disp(MA); disp('Analytical Output (Convolution) Values:');
% disp(analytical_output);