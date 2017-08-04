insereInicio(H, L, [H|L]):- !.
lerNumeros(0, L, L).
lerNumeros(I, L, R) :- read_line_to_codes(user_input, B2),
		       string_to_atom(B2, B1),
		       atom_number(B1, B),
		       Z is I - 1,
		       insereInicio(B, L, X),
		       lerNumeros(Z, X, R).
somaDuasListas([],[],L1,L1).
somaDuasListas([H1|T1], [H2|T2], L1, L2) :- Z is H1 + H2,
				     insereInicio(Z,L1, L),
				     somaDuasListas(T1, T2, L, L2).

imprimeLista([]).
imprimeLista([H|T]) :- write(H), nl,
			imprimeLista(T).


:- initialization main.

main:-
	read_line_to_codes(user_input, B2),
	string_to_atom(B2,B1),
	atom_number(B1,B),
	lerNumeros(B, [], X),
	lerNumeros(B, [], Y),
	somaDuasListas(X, Y, [], Z),
	imprimeLista(Z).
