cube :- nl,write('Enter value : '),read(X), calc(X).
calc(stop):- !.
calc(X):- C is X*X*X, write(C),cube.
