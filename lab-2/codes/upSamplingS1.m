function y = upSamplingS1(xn,n,M)
    m = n(1)* M:n(length(n))*M;
    y = zeros(1,length(m));
    count = 1;
    for k = 1:length(m)
        if rem(m(k),M)==0
            y(k) = xn(count);
            count = count + 1;
        else
            y(k) = 0;
        end
    end
end