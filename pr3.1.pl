
pr3_0:-read(N),write(N),r_list(A,N),w_list(A).
r_list(A,N):-r_list(A,N,0,[]).
r_list(A,N,N,A):-!.
r_list(A,N,I,B):-I1 is I+1,read(X),append(B,[X],B1),r_list(A,N,I1,B1).
w_list([]):-!.
w_list([H|T]):-write(H),nl,w_list(T).
pr3_1:-read(N),r_list(A,N),summ_list(A,Z),write(Z).
summ_list(A,Z):-sum(A,Z,0).
sum([],Z,Z):-!.
sum([H|T],Z,S):-S1 is S+H,sum(T,Z,S1).