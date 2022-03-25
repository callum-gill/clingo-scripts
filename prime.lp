% prime numbers from 1 to n
%input the positive integers n,k

composite(N) :- N=1..n, I=2..N-1, N\I=0.
prime(N) :- N=1..n, not composite(N).
#show prime/1.