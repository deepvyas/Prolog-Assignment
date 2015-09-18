int([deep]).
int([pingu]).
int([halwa]).
int([]).
my_float([sev]).
op(plus).
op(mul).
op(div).
op(sub).
valid_exp([A,X,B]):- (op(X),int(A),int(B);valid_exp(A),valid_exp(B);valid_exp(A),int(B);int(A),valid_exp(B));
(op(X),my_float(A),my_float(B);valid_exp(A),valid_exp(B);valid_exp(A),my_float(B);my_float(A),valid_exp(B)).