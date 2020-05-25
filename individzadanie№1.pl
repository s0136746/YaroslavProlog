
pr:-kolichestvo_druzei(2,0,A),A1 is A/2, write(A1).


kolichestvo_druzei(10000,A,A):-!.
kolichestvo_druzei(X,Kolvo,A):-X1 is X+1,(druzya(X)->A1 is Kolvo+1,kolichestvo_druzei(X1,A1,A);kolichestvo_druzei(X1,Kolvo,A)).

druzya(X):-summa_delitelei(X,H),summa_delitelei(H,Z),X=Z,X\=H.

summa_delitelei(X,T):-summa_delitelei(X,1,0,T).
summa_delitelei(X,X,T,T):-!.
summa_delitelei(X,D,Sum,S):-D1 is D+1, R is X mod D,(R=0 -> Sum1 is Sum+D,summa_delitelei(X,D1,Sum1,S);summa_delitelei(X,D1,Sum,S)).
