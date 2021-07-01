free(ann,slot(time(8,0,am),time(9,0,am))).
free(ann,slot(time(10,0,am),time(11,0,am))).
free(ann,slot(time(8,0,pm),time(9,0,pm))).

free(bob,slot(time(7,0,am),time(8,30,am))).
free(bob,slot(time(10,0,am),time(11,0,am))).
free(bob,slot(time(11,30,am),time(9,0,pm))).

free(carla,slot(time(8,0,am),time(9,0,am))).
free(carla,slot(time(10,0,am),time(10,15,am))).
free(carla,slot(time(11,0,am),time(8,30,pm))).

free(dave,slot(time(8,0,am),time(9,0,am))).
free(dave,slot(time(10,0,am),time(11,0,am))).

free(ed,slot(time(9,0,am),time(10,0,am))).

% Adding various other time slots to check functionality of program. 
% These tests rely on modifying meet.pl and meetone.pl
% For assignment turn in purposes, these will be commented out upon submission.

% Same slot as carla. Checking to see if ross gets inlcuded in output of meetone program
% free(ross,slot(time(8,0,am),time(9,0,am))).


% Checking the overlap. Should output a new time slots of 10 - 10:10 and 8 - 8:30 for everyone in the meet program
% free(chandler,slot(time(8,0,am),time(9,0,am))).
% free(chandler,slot(time(10,0,am),time(10,10,am))).
% free(chandler,slot(time(8,0,pm),time(8,15,pm))).

