valor(A, G, L, X) :- (A >= 0.7 * G), X is G * L.
valor(A, G, L, X) :- (A < 0.7 * G), X is A * L.

:- initialization main.

main:-
  read_line_to_codes(user_input, A2),
  string_to_atom(A2,A1),
  atom_number(A1,A),
  read_line_to_codes(user_input, B2),
  string_to_atom(B2,B1),
  atom_number(B1,B),
  read_line_to_codes(user_input, C2),
  string_to_atom(C2,C1),
  atom_number(C1,C),
  valor(A, B, C, X),
  write(X).


