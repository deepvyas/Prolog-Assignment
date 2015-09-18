int(smit).
int(deep).
int([]).
int(plus([])).
int(mul([])).
int([X|Y]):- int(X),int(Y).
int(plus([X|Y])):- int(X),int(Y).
int(mul([X|Y])):- int(X),int(Y).
plus([X|Y]):- int(X),int(Y);my_float(X),my_float(Y).
mul([X|Y]):- int(X),int(Y);my_float(X),my_float(Y).

my_float(daivik).
my_float([]).
my_float(plus([])).
my_float([X|Y]):- my_float(X),my_float(Y).
my_float(plus([X|Y])):- my_float(X),my_float(Y).
my_float(mul([X|Y])):- my_float(X),my_float(Y).

equals(A,B):- (my_float(A),my_float(B));int(A),int(B).