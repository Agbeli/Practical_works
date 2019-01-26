% This is the cramer method which is best fit for 3 X 3 matrix.It is not
% efficient for square matrix greater 3.
A=input('Enter nxn matrix: ');
b=input('Enter a column vector:');
N=length(b);
D_0=det(A);
x=zeros(length(b),1);
for i=1:N
    T=A;
    T(:,i)=b;
    D(i)=det(T);
    x(i)=D(i)/D_0;
end
x
