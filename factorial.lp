% Beginning of the sequence of factorials
% input : nonnegative integer n.

fac (0 ,1).
fac ( N +1 , F *( N +1)) : - fac (N , F ) , N < n.
fac ( F ) : - fac (_ , F ).
% achieved : fac /1 = {0! ,... , n !}
# show fac /1.