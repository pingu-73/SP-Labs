n = 0:50;
a = -1.41421;
b = 1;
A = [1 a b];
B = [1];
y = impz(B, A, n);
stem(n, y); xlabel('n'); ylabel('h'); title(['q4b Impulse response for \alpha =', num2str(a),'\beta=', num2str(b)]);