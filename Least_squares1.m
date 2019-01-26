%This algorithm is use to implement on a least squares approximation where p=1.
% When the user wants to find an approximation polynomial of degree 1 which
% gets close to the points then the user can implement this algorithm name
% the least squares method of approximation.
X=input('Enter the x element: ');
Y=input('Enter the y element: ');
if length(X)==length(Y)
    s_0=length(X);
    s_1=sum(X);
    s_y=sum(Y);
    s_x=sum(X);
    s_2=sum(X.^2);
    s_xy=sum(X.*Y);
    matrix=[s_0,s_1;s_x,s_2];
    b=[s_y;s_xy];
    N=length(b);
    D_0=det(matrix);
    x=zeros(length(b),1);
    for i=1:2
        T=matrix;
        T(:,i)=b;
        D(i)=det(T);
        x(i)=D(i)/D_0;
    end
    disp(['a_0=',{x(1,1)},'a_1=',{x(2,1)}])
    disp(['y=',{x(2,1)},'x+',{x(1,1)}])
else
    disp('They are not of equal length')
end

    
 
    
    
    
    
  