animal(leo).
animal(tweety).
animal(sweety).
animal(raghu).
has_feathers(sweety).
has_feathers(raghu).
tame(raghu).
bird(X):- animal(X),has_feathers(X).
tame_bird(X):- bird(X),tame(X).