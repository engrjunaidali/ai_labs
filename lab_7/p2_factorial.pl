n_factorial(0,1).
n_factorial(N,F):-
    N #> 0,
    F #= N*F1,
    N1 #= N-1,
    n_factorial(N1,F1).
