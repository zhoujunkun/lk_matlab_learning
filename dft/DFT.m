function [ Xk ] = DFT( xn,N ) %����DFT�㷨
xxn=zeros(1,N);
xxn([1:length(xn)])=xn; %���쳤��ΪN������
Xk=ones(1,N);
Wn=exp(-j*2*pi/N);
wn=ones(N,N);
for k=0:1:N-1   %DFT��ʽ
    for n=0:1:N-1
        wn(k+1,n+1)=Wn^(k*n);
    end
end
Xk=(wn*xxn')';
end