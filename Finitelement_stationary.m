%Finite element method
%please give values for a,b,N

a=input('enter value for a: ');
b=input('enter value for b: ');
N=input('enter value for N: ');
alpha=0;
beta=0;
[h,x] = meshel(a,b,N);
Ah = [1/h,-1/h;-1/h,1/h];
A = zeros(N+1,N+1);
Bh=[h;h];
for i=1:N
    A(i:i+1,i:i+1) = A(i:i+1,i:i+1) + Ah;
end
B = zeros(N+1,1);
for i=1:N
    B(i:i+1)=B(i:i+1)+Bh;
end
%since we know the values of u(1) and u(N), we delete the 1st and last row
% and also 1st and last column
A(1,:) = []; 
A(N,:) = [];
A(:,N+1) = [];
A(:,1) = [];
B(1) = [];
B(N) = [];
A;
B;
u = zeros(N+1,N+1); 
u(1) = alpha;
u(N+1) = beta;
v = (inv(A)) * B;
for i = 2:N
    u(i) = v(i-1);
end
u %solution 
plot(u) %the plot