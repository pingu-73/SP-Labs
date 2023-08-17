function y = upSamplingS2(xn,n,M)
    m = n(1)*M:n(length(n))*M;
    y = zeros(1,length(m));
    temp = xn(1);
    count = 1;
    o = zeros(1); c = zeros(1);
    for k = 1:length(m)
        if rem(m(k),M)==0
            y(k) = temp;
            count = count+1;
            if(count~=(length(n)+1))
                temp =xn(count);
            end
        else
            if (m(k-1)~=(n(count)*M))
                o  = (y(k-1)-temp)/(m(k-1) - n(count)*M);
            else
                o = 0;
            end
            c = temp-(o*n(count)*M);
            y(k) = o*m(k)+c;
        end
    end
end