clear all;
%Create a time vector
% T = [-0.5:0.01:2];
% %Create and plot a rectangular pluse centered at t =0.5
% x2 = rectpuls(T-0.5);
% plot(T,x2)
% Create a discrete time sequence nT and a discrete-time
% rectangular pulse
T2 = [0:0.1:1.9];
xs = rectpuls(T2-0.5);
xs =[0 0 0 0 0,xs];
T2p=[-.5,-.4,-.3,-.2,-.1,T2];
stem(T2p,xs)
% stem(T2p,xs)
%Compute the DFT of Xs[n] using (3.39)
N = 20;
W = exp(-j*2*pi/N);
X0 = 0;
for k = 1:20;
    X0 =0
    for n =1:20;
        X(k) = xs(n)*W^((k-1)*(n-1))+X0;
        X0 = X(k);
    end
end
%Compute |X[K]|
MX = abs(X);
%Create a vector of N ploting increments
np = [0:length(X)-1];
stem(np,MX)

