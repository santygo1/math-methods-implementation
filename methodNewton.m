#Метод Ньютона
clear all;
f = @(x)(x.^2.*sin(x) + exp(x).*x - 6);
df=@(x)(2*x.*sin(x)+x.^2*cos(x)+x.*exp(x)+exp(x));
e = 0.001;
x0 = -90;

while(abs(f(x0)) > e)
  x = x0 - f(x0)/(df(x0));
  x0 = x;
endwhile

[x0 f(x0)]
