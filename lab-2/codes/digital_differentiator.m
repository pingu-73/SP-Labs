function output_signal = digital_differentiator(input_signal)
    output_signal = zeros(size(input_signal));
    output_signal(1) = input_signal(1);
    
    for n = 2:length(input_signal)
        output_signal(n) = input_signal(n) - input_signal(n - 1);
    end
end