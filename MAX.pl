max(X,Y,X):-X>Y,!.
max(_,Y,Y).


max3(X,Y,Z,X):-X>Y,X>Z,!.
max3(_,Y,Z,Y):-Y>Z,!.
max3(_,_,Z,Z).
maxD(X,Y,Z,U):-max(Y,Z,K),max(X,K,U).
fact(0,1).
fact(N,X):-N1 is N-1,fact(N1,X1),X is X1*N.
fact1(N,X):-fact2(0,1,N,X).
fact2(N,K,N,K):-!.
fact2(I,K,N,X):-I1 is I+1,K1 is K*I1,fact(I1,K1,N,X).
fib(1,1):-!.
fib(2,1):-!.
fib(N,X):-N1 is N-1,fib(N1,X1),N2 is N-2,fib(N2,X2),X is X1+X2.

fib(N,X):-fib2(1,1,2,N,X).
fib2(_,K,N,N,K):-!.
fib2(J,K,I,N,X):-I1 is I+1, K1 is J+K,fib2(K,K1,I1,N,X).
pr(2):-!.
pr(X):-pr1(2,X).
pr(X,X):-!.
pr1(I,X):-Y is X mod I,not(Y=0),I1 is I+1,pr1(I1,X).


npr_d(N,X):-npd(N,N,X).
npd(I,N,I):-Y is  N mod I,Y=0,pr(I),!.
npd(I,N,X):- I1 is I-1,npd(I1,N,X).

