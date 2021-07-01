#!/bin/gprolog --consult-file

:- include('data.pl').
:- include('uniq.pl').
:- include('tester.pl'). % Included the external testing file

% Your code goes here.

people([ann,bob,carla]).

meet(slot(time(12, 0, am), time(11, 59, pm)), []). % Sets the total chunk of time, essentially a 24hr window
meet(Available, [StartTime1])   :- free(StartTime1, Available).
meet(Available, [StartTime1|EndTime2]) :- free(StartTime1, First), meet(EndTime1, EndTime2), overlap(Available, First, EndTime1).

% Had to add the people(People) to make it look at the slots of each person. 
% Also added uniq(Slots, Uniq) to identify each unique slot available.
main :- people(People),
	findall(Slot, meet(Slot, People), Slots),
        uniq(Slots, Uniq),
        write(Uniq), nl, halt.

:- initialization(main).
