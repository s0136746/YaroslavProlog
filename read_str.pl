read_str(A,N):-get0(X), r_str(X,A,[],N,0).
r_str(10,A,A,N,N):-!.
r_str(X,A,B,N,K):-K1 is K+1, append(B,[X],B1), get0(X1), r_str(X1,A,B1,N,K1).

write_str([]):-!.
write_str([H|T]):-put(H),write_str(T).




pr5_1:-read_str(A,N),write_str(A),write(', '),write_str(A),write(', ').
write_str(A),write(', '),write(N).

pr5_2:-read_str(A,N),count_words(A,K),write(K).

count_words(A,K):-count_words(A,0,K).
count_words([],K,K):-!.
count_words(A,I,K):-skip_space(A,A1),get_word(A1,Word,A2),Word \=[],I1 is I+1,count_words(A2,I1,K),!.
count_words(_,K,K).

skip_space([32|T],A1):-skip_space(T,A1),!.
skip_space(A1,A1).

get_word([],[],[]):-!.
get_word([32|T]),Word,Word,T):-!.
get_word([H|T],W,Word,A2):-append(W,[H],W1),get_word(T,W1,Word,A2).


