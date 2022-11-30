clear all;

n=4;

A = [7 8 4 -6; -1 6 -2 -6; 2 9 6 -4; 5 9 1 1];
AE = cat(2,a,eye(n)); % 2- по какой размерности соединяются две матрицы, eye - единичная матрица
AE0=AE;

for j = 1: 1:(n-1)
  for i = (j + 1): 1:n
    for k = 1:1:(n*2)
      AE0(j,k) = AE(i,k) - AE(i,j)*(AE(j,k)/AE(j,j));
      end
      ab = ab0;
    end
end

for j = n: -1: 2
  for i = j - 1: -1: 1
    for k = 1:1:(n*2)
      ab0(j,k) = ab(i,k) - ab(i,j)*(ab(j,k)/ab(j,j));
    end
    ab = ab0;
    end
end

for j = 1: 1: n
  for k = 1: 1: (n*2)
    ab0(j,k) = ab(j,k)/ab(j,j);
  end
  ab = ab0;
end

