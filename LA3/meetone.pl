#!/bin/gprolog --consult-file

:- include('data.pl').
:- include('uniq.pl').
:- include('tester.pl'). % Added the external test file

% Your code goes here.

meetone(Person, TimeSlot1) :- free(Person, TimeSlot2), overlap(_, TimeSlot1, TimeSlot2).


main :- findall(Person,
		meetone(Person,slot(time(8,30,am),time(8,45,am))),
		People),
	uniq(People, Uniq),
	write(Uniq), nl, halt.

:- initialization(main).
