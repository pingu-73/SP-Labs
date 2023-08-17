% clc; clearvars;clear all;
load('q2_2.mat');
ind = [2 3];
if(rem(length(x),2)==0)
    a=length(x)/2;
    n = -1*a+1:a;
else
    a = (length(x)-1)/2;
    n = -1*a:a;
end
figure(1);
stem(n,x);
xlabel('n'); ylabel('x(n)'); title('Original signal');
for k =1:2
    M = ind(k);
    y = upSamplingS1(x,n,M);
    m = n(1)*M:n(length(n))*M;
    figure(k+1); stem(m,y);
    xlabel('n'); ylabel('x(n)'); title(['Zero Order hold M=', num2str(M)]);
end
for k=1:2
    M = ind(k);
    y = upSamplingS2(x,n,M);
    m = n(1)*M:n(length(n))*M;
    figure(k+3); stem(m,y);
    xlabel('n'); ylabel('x^(n)'); title(['Linear interpolation M=', num2str(M)]);
end