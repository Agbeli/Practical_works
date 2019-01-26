% This is relaxation method when the algorithm prompt the user to enter
% square matrix and column vector, parameter omega and error. The
% subsequent instruct prompt the user that the matrix is satistify the
% conditions.

A=input('Enter the matrix:');
B=input('Enter the matrix: ');
omega=input('Enter the omega:');
eps=input('Enter the error margin: ');
%Checking whether the matrix is a square matrix.
[rows,col]=size(A);
if rows~=col
    disp('ERROR:The matrix should be a square matrix')
    return
end
[rowb,colb]=size(B);
if rowb~=rows || colb~=1
    disp('ERROR:The matrix should be a column vector')
    return
end
D=diag(diag(A));
E=tril(A,-1);
F=triu(A,1);
x=zeros(length(B),1);
R_1=((1/omega)*D-E);
R_2=(((1-omega)/omega)*D+F);
spect_radius=max(eig((inv(R_1))*(R_2))); 
%Inspection the spectral radius wheteher it is greater 1 if so it will
%prompt the user that the will not convergent.
if (spect_radius>=1)
    disp('The spectral radius of the iterative matrix is greater 1')
    disp('This process will not convergent,since it is greater than 1')
else
    x=zeros(length(B),1);
    x_1=1;
    if omega>=0 & omega<=2
        while (abs(x_1-x)>eps)
               x=((inv(R_1))*(R_2))*x_0+((inv(D))*B);
               x_1=x;
               x=x_1;
        end   
        x
    else
        disp('This process will not convergent, since omega does not lie between 0 and 2')
    end
end
