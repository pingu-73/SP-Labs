clc, clearvars, clear all
syms t;
time_grid = - 0.5:0.01:0.5;
xt = 2*cos(2*pi*t)+cos(6*pi*t); T = 1; N = 5; t1 = -T/2; t2 = T/2;
F = fourierCoeff(t,xt,T,t1,t2,N);
y = partialfouriersum(F,T,time_grid);
time = -2:0.01:2; nums = double(subs(xt,t,time));

subplot(3,1,1); plot(time,nums, "Color",'r'); grid on;
xlabel('t','FontSize',15); ylabel('x(t)','FontSize',15); title('Real Signal');

% hold on;

subplot(3,1,2); plot(time_grid,y, "Color", 'black'); grid on;
xlabel('t','FontSize',15); ylabel('x(t)','FontSize',15); title('Partially reconstructed signal');

% hold on;

subplot(3,1,3);
orig = plot(time, nums, "Color",'r'); grid on; hold on; 
recons = plot(time_grid, y, "Color",'black'); hold on;
xlabel('t','FontSize',15); ylabel('x(t)','FontSize',15); legend('Original Signal', 'Reconstructed Signal');