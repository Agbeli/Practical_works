% This is the rectangle method to approximate a value of an integration
% where we implement the three schema;
%Frorward Schema
%Backward Schema
%Centered Schema
%I_ex=input('Change the function and find the exact value');
a=input('Enter the value of a; ');
b=input('Enter the value of b; ');
K=input('Enter the number of subdivision to perform; ');
for N=1:K
    [h,x]=meshel(a,b,N)
    I_ap=0;
    for i=1:N
        I_ap1=I_ap+f(x(i))*h;
        I_ap2=I_ap+f(x(i+1))*h;
        I_ap=I_ap+f((x(i+1)+x(i))/2)*h;
    end
     Eb(N)=abs(I_ex-I_ap1)
     Ef(N)=abs(I_ex-I_ap2)
     Ec(N)=abs(I_ex-I_ap)
end
plot(1:100,Ec,1:100,Eb,1:100,Ef)
    
        


