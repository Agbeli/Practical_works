a=-2;
b=-1;
eps=0.001;
xx=a:0.1:b;
yy=funct1(xx);
if (funct1(a)*funct3(a)>eps)
    x_0=a;
elseif (funct1(b)*funct3(b)>eps)
    x_0=b;   
end 
zb=funct1(x_0)+funct2(x_0)*(xx-x_0);
x_1=x_0-(funct1(x_0)/funct2(x_0))
while (abs(x_1-x_0)>eps)
    x_0=x_1;
    x_1=x_0-funct1(x_0)/funct2(x_0);
end
zf=funct1(x_0)+funct2(x_0)*(xx-x_0);
z=zeros(length(xx),1);
x_1;
plot(xx,yy,x_1,funct1(x_1),'*',xx,zb,xx,zf,xx,z)
xlabel('x values')
ylabel('y values')
title('plot of the newtons method')
    

