A=input('Enter the matrix:');
B=input('Enter the matrix: ');
eps=input('Enter a error margin');
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
spect_radius=max(eig((inv(D-E))*(F))); 
if (spect_radius>=1)
    disp('The spectral radius of the iterative matrix is greater 1')
    disp('This process will not convergent,since it is greater than 1')
else
        x=zeros(length(B),1);
        x_1=1;
    while (abs(x_1-x)>eps)
        x=((inv(D-E))*(F))*x_0+((inv(D-E))*B);
        x_1=x;
        x=x_1;
    end
    x   
end

