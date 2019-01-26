% This is the backward method for upper triangular matrices if not a upper
% triangular matrix the alogorithm will prompt the user.

U=input('Enter a square matrix : ');
b=input('Enter a column vector : ');
if U==triu(U)
    n=length(b);
    x=zeros(n,1); 
    x(n)=b(n)/U(n,n)
    s=0;
    for i=(n-1):-1:1
        for j=1:i+1
            s=U(i,j)*x(j);
        end
        x(i)=(b(i)-s)/U(i,i);
    end
   x 
else  
    disp("This is an error matrix")
   
end
    
    
    
