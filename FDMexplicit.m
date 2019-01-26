%Finite difference method(Explicit scheme)
a=input('enter value for a:');
b=input('enter value for b:');
N=input('enter value for N:');
T_in=input('enter value for T_in:');
T_f=input('enter value for T_f:');
M=input('enter value for M:');
alpha=0;
beta=0;
[h,x]=meshel(a,b,N);
[k,t]=meshel(T_in,T_f,M);
U=zeros(N+1,M+1);
for j=1:M+1
    U(1,j)=alpha;
    U(N+1,j)=beta;
end
for i=1:N+1
    U(i,1)=Uo(x(i));
end
for j=1:M
    for i=2:N
        U(i,j+1)=(1-2*k/h^2)*U(i,j)+k/h^2*U(i+1,j)+k/h^2*U(i-1,j)+k*ft(x(i),t(j));
    end
end
plot(U(:,1:6))
