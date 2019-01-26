%finite difference method
%stationary schema

a = input('enter value for a:');
b = input('enter value for b:');
N = input('enter N: ');
alpha = 0; 
beta = 0;
[h,x] = meshel(a,b,N);
A = zeros(N-1,N-1);
for i = 1:N-1
    A(i,i)=2;
end
for i = 1:N-2
    A(i+1,i)=-1;
    A(i,i+1)=-1;
end
B = zeros(N-1,1);
B(1) = (h^2) * f(x(i)) + alpha;
B(N-1) = (h^2) * f(x(N)) + beta;
for i = 2:N-2
    B(i) = (h^2) * f(x(i+1));
end
V = (inv(A)) * B;
U(1) = alpha;
U(N+1) = beta;
for i = 2:N
    U(i) = V(i-1);
end
xx=a:0.01:b;
yy=-xx.^2+xx;
plot(xx,yy,'-k')
hold on
plot(x,U,'*')
hold off



    
