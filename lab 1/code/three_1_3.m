 syms t;
T = 1; N = 10*T; t1 = -T/2; t2 = T/2; T1 = 0.1;
xt = piecewise(((-T/2<t)&(t<-T1)),0,((-T1<=t)&(t<=T1)),1,((T1<t)&(t<T/2)),0); 
FS_idx = -N:N;
F = fourierCoeff(t,xt,T,t1,t2,N); y = T*F;

figure(1); stem(FS_idx,y); grid on;
xlabel('k', FontSize = 15); ylabel('a_k', FontSize=15); title('FS Coefficiets for T=1');