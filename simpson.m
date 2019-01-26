% This program work for numerical integration of degree 2. When we are
% interested in obtaining the approximate value to the exact then we
% implement this algorithm to that function. Here:
% This is how the algorithm works:
% First user will enter the value of a,b and N.

a=input('Enter value of a: ');
b=input('Enter the value of b: ');
N=input('input the value N:');
for N=1:N
    [h,x]=meshel(a,b,N)
    I_ap=0;
    for i=1:N
        I_ap=I_ap+(f(x(i))+4*f(x(i)+x(i+1))+f(x(i+1)))*h/6;  
    end    
end
I_ap