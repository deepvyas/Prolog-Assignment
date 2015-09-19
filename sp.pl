int(smit).
int(deep).
int([]).
int([X|Y]):- int(X),int(Y).
int(plus(X)):- int(expr(X)).
int(mul(X)):- int(expr(X)).
int(sub(X)):- int(expr(X)).
int(div(X,Y)):- int(expr(X)),int(expr(Y)).
int(expr([X|Y])):- int(X),int(Y).

floatF(daivik).
floatF([]).
floatF([X|Y]):- floatF(X),floatF(Y).
floatF(plus([X|Y])):- floatF(X),floatF(Y).
floatF(mul([X|Y])):- floatF(X),floatF(Y).
floatF(sub([X|Y])):- floatF(X),floatF(Y).
floatF(div(X,Y)):- floatF(X),floatF(Y).

sameType(E1,E2):- (floatF(E1),floatF(E2));(int(E1),int(E2));(boolean(E1),boolean(E2)).
equals(A,B):- sameType(A,B).
ifElse(E1,E2,E3):-boolean(E1),sameType(E2,E3).

boolean(true).
boolean(false).
boolean([]).
boolean([X|Y]):- boolean(X),boolean(Y).
boolean(greater(X,Y)):-sameType(X,Y).
boolean(greaterEqual(X,Y)):-sameType(X,Y).
boolean(less(X,Y)):-sameType(X,Y).
boolean(lessEqual(X,Y)):-sameType(X,Y).
boolean(equalEqual(X,Y)):-sameType(X,Y).
boolean(notEqual(X,Y)):-sameType(X,Y).
boolean(and([A|B])):-boolean(A),boolean(B).
boolean(or([A|B])):-boolean(A),boolean(B).
boolean(not(A)):-boolean(A).

%# +, -, *, /, %, <, <=, >, >=, ==, !=