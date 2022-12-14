# Метод "Дихотомии"(делания пополам)
clear all;

f = @(x)(x.^2.*sin(x) + exp(x).*x - 6);
x = [-100: 10: 100]';
y = f(x);
[x y]
e = 0.000001; #точность
a = -10;
b = 0;
c = ( a + b)/2;

counter = 0;
do
  counter++;
  c = (a+b)/2;
  if f(a)*f(c) < 0
    b = c;
  endif

  if f(c)*f(b) < 0
    a = c;
  endif
until abs(f(c)) < e

"Вывод"
counter
[c f(c)]
