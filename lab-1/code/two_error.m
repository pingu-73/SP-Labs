clc, clearvars, clearall
syms t;
T = 1; N= 5;
xt = 2*cos(2*pi*t)+cos(6*pi*t); A=fourierCoeff(t,xt,T,-T/2,T/2,N);
time_grid = -0.5:0.01:0.5;
xtrecon = partialfouriersum(A,T,time_grid); xtnew=2*cos(2*pi*time_grid)+cos(6*pi*time_grid); mae=0;
rmssum=0;
for k = 1:length(time_grid)
xtarr=2*cos(2*pi*time_grid(k))+cos(6*pi*time_grid(k)); er = abs(xtarr-xtrecon(k));
rmssum=rmssum+er*er;
if(er>mae)
mae=er;
end 
end
rms=sqrt(rmssum/length(time_grid)); 
disp('Max. abs error = '); disp(mae);
disp('sqrt error = '); disp(rms);