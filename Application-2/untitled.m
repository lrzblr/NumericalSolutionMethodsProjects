clear all close all

%1st function f=@(x) x.^2-2;
x1=0;x2=1;tol=10^-3; kmax=1000; root=muller(f,x1,x2,tol,kmax);
%function for Muller  method function root=muller(f,x1,x2,tol,kmax)
%error value for initiation of while loop error=10;
%displaying the function fprintf('The function is f(x)=')
 
while error>=tol
%function value corresponds to initial guess f0=f(x0);
f1=f(x1);
f2=f(x2); cnt=cnt+1;
%all other terms for Muller method h0=x1-x0;
h1=x2-x1;

del0=(f(x1)-f(x0))/h0;
del1=(f(x2)-f(x1))/h1;

a=(del1-del0)/(h1+h0); b=a*h1+del1;
c=f(x2);

x31=x2+((-2*c)/(b+sqrt(b*b-4*a*c)));
x32=x2+((-2*c)/(b-sqrt(b*b-4*a*c)));

%checking root closer to zero if abs(f(x31))>=abs(f(x32))
x3=x32;
else
x3=x31;
end
%percentage error after each iterations error=(abs((x3-x2)/x3))*100;
%changing x values after each iteration x0=x1; x1=x2;x2=x3;
if cnt>=kmax break
end end root=x3;
fprintf('\tThe root of the function is %f.\n',x3) end
