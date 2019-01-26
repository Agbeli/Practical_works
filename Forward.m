%This algorithm is implement on a lower triangular matrices,the algorithm
%will prompt the user if it is not lower triangular matrix.

L=input('Enter a square matrix: ');
b=input('Enter a column vector: ');
if L==tril(L)
    
    N=length(b);
    x=zeros(N,1);
    x(1)=b(1,1)/L(1,1);
    s=0;
    for i=2:N
        for j=1:i-1
           s=L(i,j)*x(j);
        end
        x(i)=(b(i)-s)/L(i,i);
    end
    x
else 
    disp('There is error in the matrix')
end
