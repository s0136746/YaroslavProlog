max(X,Y,X):-X>Y,!.
max(_,Y,Y).


max3(X,Y,Z,X):-X>Y,X>Z,!.
max3(_,Y,Z,Y):-Y>Z,!.
max3(_,_,Z,Z).
maxD(X,Y,Z,U):-max(Y,Z,K),max(X,K,U).
fact(0,1).
fact(N,X):-N1 is N-1,fact(N1,X1),X is X1*N.

