%

eps=input('Enter error margin :' );
a=input('Enter the start point :' );
b=input('Enter the endpoint: ');
while ((b-a)>eps)
    p=(a+b)/2;
    if (fu(a)*fu(b)==0)
        x=p;
    elseif (fu(a)*fu(p)<0)
        b=p;
    else
        a=p;
    end
end
x
