frequencia(A, [], 0).
frequencia(A, [A|L], X) :- frequencia(A, L, G), X is 1 + G.
frequencia(A, [D|L], X) :- frequencia(A, L, X).

:- initialization main.

main:-
	read_line_to_codes(user_input, A1),
	string_to_atom(A1, A),
	read_line_to_codes(user_input, L2),
	string_chars(L2, L),
	frequencia(A, L, X),
	write(X).
