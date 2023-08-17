clc; clearvars; close all;

M_values = [2, 3]; 
interpolation_methods = {'zero_order_hold', 'linear'};
x = 1:10; figure;

subplot_rows = length(M_values);
subplot_cols = length(interpolation_methods);

for M_idx = 1:length(M_values)
    M = M_values(M_idx);
    for interp_idx = 1:length(interpolation_methods)
        interp_method = interpolation_methods{interp_idx};
        y = upsample_sequence(x, M, interp_method);

        subplot(subplot_rows, subplot_cols, (M_idx-1)*subplot_cols + interp_idx);
        stem(1:length(y), y);
        title(sprintf('M = %d, Interpolation: %s', M, interp_method));
        xlabel('n', 'FontSize', 15); ylabel('y[n]', 'FontSize', 15);
    end
end