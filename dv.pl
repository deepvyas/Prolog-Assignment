%% Add support for complex assignments(datatype support).

%% Enter int variables here
int(deep).
int(address(daivik)).
%% Donot enter variables beyond this point.

int(my_plus(X,Y)):- 
	int(X),int(Y).
int(my_div(X,Y)) :- 
	int(X),int(Y).
int(my_sub(X,Y)) :-
	int(X),int(Y);
	int(address(X)),int(address(Y));
	double(address(X)),double(address(Y));
	boolean(address(X)),boolean(address(Y));
	bitset(address(X)),bitset(address(Y)).
int(my_mul(X,Y)) :- 
	int(X),int(Y).
int(my_modulo(X,Y)) :- 
	int(X),int(Y).
int(address(my_addof(X))) :- int(X).
int(address(my_plus(X,Y))) :- 
	int(address(X)),int(Y);
	int(address(Y)),int(X).
int(value_of(X)) :- int(address(X)).
int(equals(X,Y)) :-
	int(X),int(Y).
int(address(equals(X,Y))):- int(address(X)),int(address(Y)).

%% Enter double variables here 
double(smit).
double(address(sm)).

%% Donot enter varibles beyond this point

double(my_plus(X,Y)):- 
	double(X),double(Y).
double(my_div(X,Y)) :- 
	double(X),double(Y).
double(my_sub(X,Y)) :- 
	double(X),double(Y).
double(my_mul(X,Y)) :- 
	double(X),double(Y).
double(my_modulo(X,Y)) :- 
	double(X),double(Y).
double(address(my_addof(X))) :- 
	double(X).
double(address(my_plus(X,Y))) :- 
	double(address(X)),int(Y);
	double(address(Y)),int(X).
double(value_of(X)) :- 
	double(address(X)).

double(equals(X,Y)):-
	double(X), double(Y).
double(address(equals(X,Y))):- 
	double(address(X)),double(address(Y)).

%% Enter bitset type variables here
bitset(d).
bitset(address(c)).
%% Do not enter variables beyond this point


bitset(my_right_shift(X,Y)) :- 
	bitset(X),int(Y); 
	int(X),int(Y); 
	double(X),int(Y).
bitset(my_left_shift(X,Y)) :- 
	bitset(X),int(Y); 
	int(X),int(Y); 
	double(X),int(Y).
bitset(address(my_addof(X))) :- 
	bitset(X).
bitset(address(my_plus(X,Y))) :- 
	bitset(address(X)),int(Y);
	bitset(address(Y)),int(X).
bitset(value_of(X)) :- 
	bitset(address(X)).
bitset(bit_and(X,Y)) :- 
	bitset(X),bitset(Y); 
	int(X),int(Y); 
	double(X),double(Y); 
	int(X),double(Y); 
	int(Y),double(X).
bitset(bit_or(X,Y)) :- 
	bitset(X),bitset(Y);
	int(X),int(Y); 
	double(X),double(Y); 
	int(X),double(Y); 
	int(Y),double(X).
bitset(bit_not(X)) :- 
	bitset(X); 
	int(X); 
	double(X).
bitset(equals(X,Y)):-
	bitset(X), bitset(Y).
bitset(address(equals(X,Y))):- 
	bitset(address(X)),bitset(address(Y)).

%% Enter boolean type variables here
boolean(true).
boolean(false).
boolean(drivik).
boolean(address(dr)).

%% Do not enter variables beyond this point

boolean(my_greater(X,Y)) :- 
	int(X),int(Y);
	double(X),double(Y).
boolean(my_greater_or_equal(X,Y)) :- 
	int(X),int(Y);
	double(X),double(Y).
boolean(my_less(X,Y)) :- 
	int(X),int(Y);
	double(X),double(Y).
boolean(my_less_or_equal(X,Y)) :- 
	int(X),int(Y);
	double(X),double(Y).
boolean(my_equal_equal(X,Y)) :- 
	int(X),int(Y);
	double(X),double(Y).
boolean(my_not_equal(X,Y)) :- 
	int(X),int(Y);
	double(X),double(Y).
boolean(my_and(X,Y)) :- 
	boolean(X),boolean(Y).
boolean(my_or(X,Y)) :- 
	boolean(X),boolean(Y).
boolean(my_not(X)) :- 
	boolean(X).
boolean(address(my_addof(X))) :- 
	boolean(X).
boolean(address(my_plus(X,Y))) :- 
	boolean(address(X)),int(Y);
	boolean(address(Y)),int(X).
boolean(value_of(X)) :- 
	boolean(address(X)).
boolean(equals(X,Y)):-
	boolean(X), boolean(Y).
boolean(address(equals(X,Y))):- 
	boolean(address(X)),boolean(address(Y)).

my_plus(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y);
	bitset(address(X)),bitset(address(Y)).
my_div(X,Y) :- 
	int(X),int(Y); 
	double(X),double(Y).
my_sub(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y);
	int(address(X)),int(address(Y));
	double(address(X)),double(address(Y));
	boolean(address(X)),boolean(address(Y));
	bitset(address(X)),bitset(address(Y)).
my_mul(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y);
	address(X),address(Y).
my_modulo(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y);
	int(X),double(Y);
	double(X),int(Y).
my_right_shift(X,Y) :- 
	bitset(X), int(Y).
my_left_shift(X,Y) :- 
	bitset(X), int(Y).
my_greater(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y).
my_greater_or_equal(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y).
my_less(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y).
my_less_or_equal(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y).
my_equal_equal(X,Y) :-
	int(X),int(Y);
	double(X),double(Y).
my_not_equal(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y).
my_addof(X) :- 
	int(X);
	double(X);
	boolean(X);
	bitset(X).	
value_of(X) :- 
	int(address(X));
	double(address(X));
	boolean(address(X));
	bitset(address(X)).
equals(X,Y) :- 
	sameType(X,Y).
sameType(EX,EY):- 
	int(EX),int(EY);
	boolean(EX),boolean(EY);
	double(EX),double(EY);
	bitset(EX),bitset(EY);
	int(address(EX)),int(address(EY));
	double(address(EX)),double(address(EY));
	boolean(address(EX)),boolean(address(EY));
	bitset(address(EX)),bitset(address(EY)).

bit_and(X,Y) :- 
	bitset(X),bitset(Y); 
	int(X),int(Y); 
	double(X),double(Y); 
	int(X),double(Y); 
	int(Y),double(X).
bit_and_equals(X,Y) :- 
	equals(X,bit_and(X,Y)).
bit_or(X,Y) :- 
	bitset(X),bitset(Y);
	int(X),int(Y); 
	double(X),double(Y); 
	int(X),double(Y); 
	int(Y),double(X).
bit_or_equals(X,Y) :- 
	equals(X,bit_or(X,Y)).
bit_not(X) :- 
	bitset(X); 
	int(X); 
	double(X).

my_plus_equals(X,Y):-
	equals(X,my_plus(X,Y)).
my_mul_equals(X,Y):-
	equals(X,my_mul(X,Y)).
my_div_equals(X,Y):-
	equals(X,my_div(X,Y)).
my_sub_equals(X,Y):-
	equals(X,my_sub(X,Y)).
my_left_shift_equals(X,Y) :- 
	equals(X,my_left_shift(X,Y)).
my_right_shift_equals(X,Y) :- 
	equals(X,my_right_shift(X,Y)).




ternary_cond(true,X,Y):-
	int(X),int(Y);
	double(X),double(Y);
	boolean(X),boolean(Y);
	bitset(X),bitset(Y).

ternary_cond(false,X,Y):-
	int(X),(double(Y);bitset(Y);boolean(Y));
	double(X),(int(Y);bitset(Y);boolean(Y));
	bitset(X),(double(Y);int(Y);boolean(Y));
	boolean(X),(double(Y);bitset(Y);int(Y)).