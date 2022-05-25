parent(pam,bob).
parent(tom,bob).
parent(bob,ann).
parent(bob,pat).


mother(X,Y):- parent(X,Y), female(X).
father(X,Y):- parent(X,Y), male(X).
sister(X,Y):- parent(Z,X), parent(Z,Y), female(X), X\==Y.
brother(X,Y):- parent(Z,X), parent(Z,Y), male(X), X\==Y.
haschild(X): parent(X,_).

daughter(X, Y):- female(X), parent(Y,X).
son(X,Y):- male(X),parent(Y,X).
siblings(X,Y):- parent(Z,X),parent(Z,Y),X\==Y.

uncle(X,Z):- brother(X,Y),parent(Y,Z).
aunt(X,Z):- sister(X,Y),parent(Y,Z).
cousin(X,Y):- parent(Z, X), uncle(Z, Y), Y\=X.

wife(X,Y) :- parent(X,Z),parent(Y,Z), female(X),male(Y).
husband(X,Y):- parent(X,Z), parent(Y,Z), male(X), female(Y).

stepfather(X,Y) :- mother(Z,Y),husband(X,Z),father(K,Y),K\==X.
stepmother(X,Y) :- father(Z,Y),wife(X,Z),mother(K,Y),K\==X.

grandparent(X,Y) :- parent(X,Z), parent(Z,Y).
grandfather(X,Y) :- father(X,Z),parent(Z,Y).
grandmother(X,Y) :- mother(X,Z),parent(Z,Y).








