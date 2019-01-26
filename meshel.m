% The meshel function is apply on rectangle method when finding an
% approximate value.
function[h,x]=meshel(a,b,N)
   h=(b-a)/N;
   for i= 1:N+1
       x(i)=a+(i-1)*h;
   end
end



