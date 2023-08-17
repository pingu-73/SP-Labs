clc; clearvars; clear all;

load('q2_1.mat'); load('q2_2.mat'); 


M_values = [2, 3]; % Upsampling factors
interpolation_methods = {'zero_order_hold', 'linear'};


test_sequences = {x, x}; % Update variable names if necessary

figure;

subplot_rows = length(M_values);
subplot_cols = length(interpolation_methods);


for seq_idx = 1:length(test_sequences)
    x = test_sequences{seq_idx};

    
    for M_idx = 1:length(M_values)
        M = M_values(M_idx);
        for interp_idx = 1:length(interpolation_methods)
            interp_method = interpolation_methods{interp_idx};
            y = upsample_sequence(x, M, interp_method);

            subplot(length(test_sequences), subplot_rows*subplot_cols, ...
                (seq_idx-1)*subplot_rows*subplot_cols + (M_idx-1)*subplot_cols + interp_idx);
            stem(1:length(y), y);
            title(sprintf('Sequence %d, M = %d, Interpolation: %s', seq_idx, M, interp_method));
            xlabel('n');
            ylabel('y[n]');
        end
    end
end