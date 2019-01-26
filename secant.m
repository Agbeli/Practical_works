% This algorithm is implement on a nonlinear equations. Where the algorithm
% prompt the user to enter the margin of error and the interval a and b.
eps=input('Enter margin error: ');
a=input('Enter value of a: ');
b=input('Enter the value of b: ');
xx=a:0.01:b;
yy=func(xx);
z=zeros(length(xx),1);
x_0=b;
x_1=(a*func(x_0)-x_0*func(a))/(func(x_0)-func(a));
while (abs(x_1-x_0)>eps)
    x_0=x_1;
    x_1=(a*func(x_1)-x_1*func(a))/(func(x_1)-func(a));
end
x_1
zf=((func(b)-func(a))/(b-a))*xx+(b*func(a)-a*func(b))/(b-a);
plot(xx,func(xx),x_1,func(x_1),'*',xx,zf,xx,z)
xlabel('x values')
ylabel('y values')
title('PLOT OF SECANT')
