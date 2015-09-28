%% Add support for complex assignments(datatype support).

%% Enter int variables here

int(deep).
int(X):-integer(X).
int(value_at(de)).
%% Donot enter variables beyond this point.

int(my_plus(X,Y)):- 
	int(X),int(Y).
int(my_div(X,Y)) :- 
	int(X),int(Y).
int(my_sub(X,Y)) :-
	int(X),int(Y);
	address(X),address(Y).
int(my_mul(X,Y)) :- 
	int(X),int(Y).
int(my_modulo(X,Y)) :- 
	int(X),int(Y).


int(value_at(my_addof(X))):-int(X).


int(equals(X,Y)) :-
	int(X),int(Y).
int(my_plus_equals(X,Y)):-
	int(X),int(Y).
int(my_sub_equals(X,Y)):-
	int(X),int(Y).
int(my_mul_equals(X,Y)):-
	int(X),int(Y).
int(my_div_equals(X,Y)):-
	int(X),int(Y).
int(value_at(equals(X,Y))):- 
	int(value_at(X)),int(value_at(Y)).

%% Enter double variables here 

double(smit).
double(X) :- float(X).
double(value_at(sm)).

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

double(value_at(my_addof(X))) :- double(X).

double(equals(X,Y)):-
	double(X),double(Y).
double(my_plus_equals(X,Y)):-
	double(X),double(Y).
double(my_sub_equals(X,Y)):-
	double(X),double(Y).
double(my_mul_equals(X,Y)):-
	double(X),double(Y).
double(my_div_equals(X,Y)):-
	double(X),double(Y).
double(value_at(equals(X,Y))):- 
	double(value_at(X)),double(value_at(Y)).

%% Enter bitset type variables here

bitset(d).
bitset(value_at(c)).

%% Do not enter variables beyond this point


bitset(my_right_shift(X,Y)) :- 
	(bitset(X); int(X); double(X)),int(Y).

bitset(my_left_shift(X,Y)) :- 
	(bitset(X); int(X); double(X)),int(Y).

bitset(value_at(my_addof(X))) :- bitset(X).

bitset(bit_and(X,Y)) :- 
	(bitset(X);int(X);double(X)),(bitset(Y);int(Y);double(Y)).
bitset(bit_or(X,Y)) :- 
	(bitset(X);int(X);double(X)),(bitset(Y);int(Y);double(Y)).
bitset(bit_not(X)) :- 
	bitset(X); 
	int(X); 
	double(X).

bitset(equals(X,Y)):-
	bitset(X), bitset(Y).

bitset(value_at(equals(X,Y))):- 
	bitset(value_at(X)),bitset(value_at(Y)).

%% Enter boolean type variables here

boolean(true).
boolean(false).
boolean(drivik).
boolean(value_at(dr)).

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

boolean(value_at(my_addof(X))) :- boolean(X).


boolean(equals(X,Y)):-
	boolean(X), boolean(Y).
boolean(value_at(equals(X,Y))):- 
	boolean(value_at(X)),boolean(value_at(Y)).


address(my_addof(X)) :- int(X);double(X);boolean(X);bitset(X).
address(my_plus(X,Y)):- address(X),int(Y);address(Y),int(X).


my_plus(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y);
	address(X),int(Y);
	address(Y),int(X).
my_div(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y).
my_sub(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y);
	address(X),address(Y).
my_mul(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y).
my_modulo(X,Y) :- 
	int(X),int(Y);
	double(X),double(Y).

my_right_shift(X,Y) :- 
	(bitset(X);int(X);double(X)), int(Y).
my_left_shift(X,Y) :- 
	(bitset(X);int(X);double(X)), int(Y).
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
equals(X,Y) :- 
	sameType(X,Y).
sameType(X,Y):- 
	int(X),int(Y);
	boolean(X),boolean(Y);
	double(X),double(Y);
	bitset(X),bitset(Y);
	address(X),address(Y).

bit_and(X,Y) :- 
	(bitset(X);int(X);double(X)),(bitset(Y);int(Y);double(Y)).
bit_and_equals(X,Y) :- 
	equals(X,bit_and(X,Y)).
bit_or(X,Y) :- 
	(bitset(X);int(X);double(X)),(bitset(Y);int(Y);double(Y)).
bit_or_equals(X,Y) :- 
	equals(X,bit_or(X,Y)).
bit_not(X) :- 
	bitset(X); 
	int(X); 
	double(X).

my_and(X,Y) :- boolean(X),boolean(Y).
my_or(X,Y) :- boolean(X),boolean(Y).
my_not(X) :- boolean(X).

my_plus_equals(X,Y) :-
	equals(X,my_plus(X,Y)).
my_mul_equals(X,Y) :-
	equals(X,my_mul(X,Y)).
my_div_equals(X,Y) :-
	equals(X,my_div(X,Y)).
my_sub_equals(X,Y) :-
	equals(X,my_sub(X,Y)).
my_left_shift_equals(X,Y) :- 
	equals(X,my_left_shift(X,Y)).
my_right_shift_equals(X,Y) :- 
	equals(X,my_right_shift(X,Y)).

if_else(Z,X,Y):-
	boolean(Z),sameType(X,Y).