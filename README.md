# Assignment 1 - Problem A: Problem Statement #
* Design and implement a Prolog program to verify whether primitive expressions in a language like C are type-correct. 
For instance, an expression of the form x + y is type-correct if x and y are both of type int or they are both of type float. 
* An expression of the form v = e is type-correct if the expression e evaluates to the same type as that of variable v. Assume that the primitive types available in the language (along with the corresponding operations) are:
* int and float (+, -, *, /, %, <, <=, >, >=, ==, !=)
* Comparators (<, <=, etc.) evaluate to Boolean.
* Boolean (&&, ||, !)
* bitset (&,|,~, >>, <<)
* Shift operators >> and << require bitset on the left and a positive int on the right. 
* address (&, +, -, *)
* &v for any variable v returns a value of type address
* e1 + e2 is type-correct if e1 is of type address and e2 is of type int; the result is of type address
* e1 - e2 is type-correct if e1 and e2 are both of type address; the result is of type int
* \*e is type-correct if e is of type address; the result depends on the form of e: if e is a variable, then the result is of the same type as that of the variable; otherwise it is undefined Assume that variables can be of any type, and
assignment operations include =, as well as any of the operators list above followed by = (for instance, &=, +=, >>=).
* Assume TRUE and FALSE are constant values of type Boolean with the usual meanings. Assume that int and float values can be treated as bitset values in the contexts where operations require them.
* Also include the ?: operator for verification of typecorrectness:
  ** i.e. expressions of the form e1 ? e2 : e3
  ** where e1 must evaluate to Boolean, e2 and e3 must evaluate to the same type whatever that my be.