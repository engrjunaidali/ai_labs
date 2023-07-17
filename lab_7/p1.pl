reigns(1900,1950,mudassir).
reigns(1951,1970,umair).
reigns(1971,1985,zubair).
reigns(1986,2010,hassnain).

ruler(X,Y) :- reigns(A,B,X),
            Y >= A,
            Y <= B.
