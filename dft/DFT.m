function [ Xk ] = DFT( xn,N ) %定于DFT算法
xxn=zeros(1,N);
xxn([1:length(xn)])=xn; %构造长度为N的序列
Xk=ones(1,N);
Wn=exp(-j*2*pi/N);
wn=ones(N,N);
for k=0:1:N-1   %DFT公式
    for n=0:1:N-1
        wn(k+1,n+1)=Wn^(k*n);
    end
end
Xk=(wn*xxn')';
end