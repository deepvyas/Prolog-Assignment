%value_of() is an issue.

int(address(de)).
int(daivik).
int(deep).
int(smit).
int(my_plus(X,Y)):- int(X),int(Y).	
int(my_div(X,Y)) :- int(X),int(Y).
int(my_sub(X,Y)) :- int(X),int(Y);int(address(X)),int(address(Y));my_float(address(X)),my_float(address(Y));boolean(address(X)),boolean(address(Y));
				bitset(address(X)),bitset(address(Y)).
int(my_mul(X,Y)) :- int(X),int(Y).
int(my_modulo(X,Y)) :- int(X),int(Y).
int(address(my_addof(X))) :- int(X).
int(address(my_plus(X,Y))) :- int(address(X)),int(Y);int(address(Y)),int(X).
int(value_of(X)) :- int(address(X)).

my_float(address(h)).
my_float(help).
my_float(hi).
my_float(my_plus(X,Y)):- my_float(X),my_float(Y).
my_float(my_div(X,Y)) :- my_float(X),my_float(Y).
my_float(my_sub(X,Y)) :- my_float(X),my_float(Y).
my_float(my_mul(X,Y)) :- my_float(X),my_float(Y).
my_float(my_modulo(X,Y)) :- my_float(X),my_float(Y).
my_float(address(my_addof(X))) :- my_float(X).
my_float(address(my_plus(X,Y))) :- my_float(address(X)),int(Y);my_float(address(Y)),int(X).
my_float(value_of(X)) :- my_float(address(X)).

my_plus(X,Y) :- int(X),int(Y);my_float(X),my_float(Y);bitset(address(X)),bitset(address(Y)).
my_div(X,Y) :- int(X),int(Y); my_float(X),my_float(Y).
my_sub(X,Y) :- int(X),int(Y);my_float(X),my_float(Y);int(address(X)),int(address(Y));my_float(address(X)),my_float(address(Y));boolean(address(X)),boolean(address(Y));
				bitset(address(X)),bitset(address(Y)).
my_mul(X,Y) :- int(X),int(Y);my_float(X),my_float(Y);address(X),address(Y).
my_modulo(X,Y) :- int(X),int(Y);my_float(X),my_float(Y);int(X),my_float(Y);my_float(X),int(Y).
my_rightshift(X,Y) :- bitset(X), int(Y).
my_leftshift(X,Y) :- bitset(X), int(Y).
my_greater(X,Y) :- int(X),int(Y);my_float(X),my_float(Y).
my_greater_or_equal(X,Y) :- int(X),int(Y); my_float(X),my_float(Y).
my_less(X,Y) :- int(X),int(Y);my_float(X),my_float(Y).
my_less_or_equal(X,Y) :- int(X),int(Y);my_float(X),my_float(Y).
my_equal_equal(X,Y) :- int(X),int(Y);my_float(X),my_float(Y).
my_not_equal(X,Y) :- int(X),int(Y);my_float(X),my_float(Y).
my_addof(X) :- int(X);my_float(X);boolean(X);bitset(X).	% It has been assumed that pointers to diff data types are not type equal.
value_of(X) :- int(address(X));my_float(address(X));boolean(address(X));bitset(address(X)).
equals(X,Y) :- sameType(X,Y).
sameType(EX,EY):- int(EX),int(EY);boolean(EX),boolean(EY);my_float(EX),my_float(EY);bitset(EX),bitset(EY);int(address(EX)),int(address(EY));my_float(address(EX)),my_float(address(EY));
				boolean(address(EX)),boolean(address(EY));bitset(address(EX)),bitset(address(EY)).

bitset(address(bi)).
bitset(c).
bitset(d).
bitset(my_right_shift(X,Y)) :- bitset(X),int(Y).
bitset(my_left_shift(X,Y)) :- bitset(X),int(Y).
bitset(address(my_addof(X))) :- bitset(X).
bitset(address(my_plus(X,Y))) :- bitset(address(X)),int(Y);bitset(address(Y)),int(X).
bitset(value_of(X)) :- bitset(address(X)).

boolean(true).
boolean(false).
boolean(drivik).
boolean(uncle_chipps).
boolean(my_greater(X,Y)) :- int(X),int(Y);my_float(X),my_float(Y).
boolean(my_greater_or_equal(X,Y)) :- int(X),int(Y);my_float(X),my_float(Y).
boolean(my_less(X,Y)) :- int(X),int(Y);my_float(X),my_float(Y).
boolean(my_less_or_equal(X,Y)) :- int(X),int(Y);my_float(X),my_float(Y).
boolean(my_equal_equal(X,Y)) :- int(X),int(Y);my_float(X),my_float(Y).
boolean(my_not_equal(X,Y)) :- int(X),int(Y);my_float(X),my_float(Y).
boolean(my_and(X,Y)) :- boolean(X),boolean(Y).
boolean(my_or(X,Y)) :- boolean(X),boolean(Y).
boolean(my_not(X)) :- boolean(X).
boolean(address(my_addof(X))) :- boolean(X).
boolean(address(my_plus(X,Y))) :- boolean(address(X)),int(Y);boolean(address(Y)),int(X).
boolean(value_of(X)) :- boolean(address(X)).

%equals(my_sub(my_addof(daivik),my_plus(de,my_addof(smit))),deep).