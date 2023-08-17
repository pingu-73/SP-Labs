function [y] = upsample_sequence(x, M, interpolation_method)
    L = length(x); % Original sequence length
    newL = M * L; % New sequence length after upsampling

    % Initialize upsampled sequence
    y = zeros(1, newL);

    % Upsampling step 1
    for i = 1:L
        y(M*i) = x(i);
    end

    % Upsampling step 2: Interpolation
    for i = 1:newL
        if y(i) == 0
            if strcmp(interpolation_method, 'zero_order_hold')
                % Zero order hold (nearest neighbor) interpolation
                index = floor(i/M);
                y(i) = x(index+1);
            elseif strcmp(interpolation_method, 'linear')
                % Linear interpolation
                index_lower = floor(i/M);
                index_upper = ceil(i/M);
                if index_lower == 0
                    index_lower = 1;
                end
                if index_upper > L
                    index_upper = L;
                end
                alpha = (i - index_lower*M) / (M);
                y(i) = (1 - alpha) * x(index_lower) + alpha * x(index_upper);
            end
        end
    end
end