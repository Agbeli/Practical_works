%Finite difference method
%(Implicit scheme)
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
size(U);
A=zeros(N-1,N-1);
for j=1:M+1
    U(1,j)=alpha;
    U(N+1,j)=beta;
end

for i=1:N+1
    U(i,1)=Uo(x(i));
end
for i=1:N-1
    A(i,i)=(1/k)+(2/h^2);
end
for i=1:N-2
    A(i+1,i)=-1/h^2;
    A(i,i+1)=-1/h^2;
end
B=zeros(N-1,1);
B(1)=ft(x(2),t(j))+1/k*U(2,j-1)+1/h^2*U(i,j);
B(N-1)=ft(x(N),t(j))+1/k*U(N,j-1)+1/h^2*U(N+1,j);
for j=2:M+1
     for i=2:N-2
        B(i)=ft(x(i+1),t(j))+1/k*U(i+1,j-1);
     end
    V=(inv(A))*B;
    for i=2:N
       U(i,j)=V(i-1);
    end
end

plot(U(:,3));
surf(U)
