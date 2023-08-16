function MA = movingAverage(x_k, N)
    MA = zeros(size(x_k)); 
    for n = 1:length(x_k)
        acc = 0;
        for k = max(1, n - N + 1):n
            acc = acc + x_k(k);
        end
        MA(n) = (1 / N) * acc; 
    end
end

% function MA = movingAverage(x_k, N)
%     MA = zeros(size(x_k));
%     acc = 0;
%     for n = 1:length(x_k)
%         acc = acc + x_k(n);
%         if n > N
%             acc = acc - x_k(n - N);
%         end
%         MA(n) = (1 / min(n, N)) * acc;
%     end
% end