read_list(A,N)-r_l([],A,0,N).
r_l(A,A,N,N):-!.
r_l(C,A,R,N):-R is R+1,read(X),append(C,[X],C1),r_l(B1,A,R1,N).
pr:-read(N),read_list(A,N),new_list(A,[],M),write(M).
Poisk:-[H|_),H).
poisk([_|T],E):-find(T,E).
delitel(X,X,D,D):-!.
%доделать

