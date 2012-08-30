fib(1,0).
fib(2,1).

fib(X,Y) :- X > 2, X1 is X - 1, X2 is X - 2, fib(X1, Y1), fib(X2, Y2), Y is Y1 + Y2.  