
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


pr3_2:-read(N),r_list(A,N),read(I),element_nomer(A,I,Z),write(Z).
element_nomer(A,I,Z):-element_nomer(A,I,1,Z).
element_nomer([H|_],I,I,H):-!.
element_nomer([_|T],I,K,Z):-K1 is K+1,element_nomer(T,I,K1,Z).


pr3_3:-read(N),r_list(A,N),read(A),min_el(A,M),write(M).
min_el([H|T],M):-min_el(T,M,H).
min_el([],M,M):-!.
min_el([H|T],M,M1):-H<M1,!,min_el(T,M,H).
min_el([_|T],M,M1):-min_el(T,M,M1).


p3_2(A,N):-p3_2(A,2,0,N).
p3_2(A,A,N,N):-!.
p3_2(A,I,K,N):-pr(I,PPD),I=PPD,K1 is K+1, I1 is I+1, p3_2(A,I1,K1,N).
p3_2(A,I,K,N):-I1 is I+1, p3_2(A,I1,K,N).

pr(I,PPD):-pr(I,2,1,PPD).
pr(I,I,PPD,PPD):-!.
pr(I,K,P,PPD):-Y is I mod K, Y=0,pr(K),P1 is P*K,K1 is K+1,prprd(I,K1,P1,PPD),!.
prprd(I,K,P,PPD):-K1 is K+1,prprd(I,K1,P,PPD).




euler(A,N):-euhu(A,2,1,N).
euhu(A,A,N,N):-!.
euhu(A,I,K,N):-nod(A,I,1),!,I1 is I+1, K1 is K+1,euhu(A,I1,K1,N).
