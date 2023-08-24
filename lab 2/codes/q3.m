clc; clearvars; clear all;
n = -30:30;
x = (n>=0) & (n<20);
x = 5*x;
y = digitalDifferentiator(n,x);
subplot(2,1,1); stem(n,x); 
xlabel('n'); ylabel('x'); title('Input Signal q3a');
subplot(2,1,2); stem(n,y, 'r');
xlabel('n'); ylabel('y');
title('Output to signal q3a');

%%
%part - b
clc; clearvars; clear all;

n = -30:30;
u = (n>=0) & (n<10);
u1 = (n>=10) & (n<20);
x = n.*u+(20-n).*u1;
y = digitalDifferentiator(n,x);
subplot(2,1,1); stem(n,x); 
xlabel('n'); ylabel('x'); title('Input Signal q3b');
subplot(2,1,2); stem(n,y,'r');
xlabel('n'); ylabel('y');
title('Output to signal q3b');

%%
% part-c
clc; clearvars; clear all;
n = -50:120;
u = (n>=0) & (n<100);
x = sin(n*pi/25).*u;
y = digitalDifferentiator(n,x);
subplot(2,1,1); stem(n,x); xlabel('n'); ylabel('x');
title('Input Signal q3c');
subplot(2,1,2); stem(n,y);
xlabel('n'); ylabel('y'); title('Output to signal q3c');