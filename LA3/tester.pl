% External testing file. Instead of having the logic within the meet and meetone programs.

% Checks to see if the 1st time is earlier than the 2nd time
firstTimeEarlier(time(FirstTimeHour, FirstTimeMin, FirstAmOrPm), time(SecondTimeHour, SecondTimeMin, SecondAmOrPm)) :- 
	(FirstAmOrPm \== SecondAmOrPm , FirstAmOrPm == am);
	(FirstAmOrPm == SecondAmOrPm  , FirstTimeHour mod 12 < SecondTimeHour mod 12);
	(FirstAmOrPm == SecondAmOrPm  , FirstTimeHour mod 12 == SecondTimeHour mod 12 , FirstTimeMin < SecondTimeMin).

% Checks to see if the 1st time is later than the 2nd time
secondTimeEarlier(time(FirstTimeHour, FirstTimeMin, FirstAmOrPm), time(SecondTimeHour, SecondTimeMin, SecondAmOrPm)) :- 
	(FirstAmOrPm \== SecondAmOrPm , FirstAmOrPm == pm);
	(FirstAmOrPm == SecondAmOrPm  , FirstTimeHour mod 12 > SecondTimeHour mod 12);
	(FirstAmOrPm == SecondAmOrPm  , FirstTimeHour mod 12 == SecondTimeHour mod 12 , FirstTimeMin > SecondTimeMin).

% Checks to see if the two times given are equal
bothTimesEqual(time(FirstTimeHour, FirstTimeMin, FirstAmOrPm), time(SecondTimeHour, SecondTimeMin, SecondAmOrPm)) :-
	FirstAmOrPm==SecondAmOrPm , FirstTimeHour==SecondTimeHour , FirstTimeMin==SecondTimeMin .

% Determines if the given time slots overlap
overlap(Over, slot(TimeStart1, TimeEnd1), slot(TimeStart2, TimeEnd2)) :-
	
	(secondTimeEarlier(TimeStart1, TimeStart2) , firstTimeEarlier(TimeEnd1, TimeEnd2) , Over = slot(TimeStart1, TimeEnd1));

	
	(firstTimeEarlier(TimeStart1, TimeStart2) , secondTimeEarlier(TimeEnd1, TimeEnd2) , Over = slot(TimeStart2, TimeEnd2));

	
	(firstTimeEarlier(TimeStart1, TimeStart2) , secondTimeEarlier(TimeEnd1, TimeStart2) , firstTimeEarlier(TimeEnd1, TimeEnd2) , Over = slot(TimeStart2, TimeEnd1));

	
	(secondTimeEarlier(TimeStart1, TimeStart2) , firstTimeEarlier(TimeStart1, TimeEnd2) , secondTimeEarlier(TimeEnd1, TimeEnd2) , Over = slot(TimeStart1, TimeEnd2));

	
	(secondTimeEarlier(TimeStart1, TimeStart2) , bothTimesEqual(TimeEnd1, TimeEnd2) , Over = slot(TimeStart2, TimeEnd2));

	
	(bothTimesEqual(TimeStart1, TimeStart2) , firstTimeEarlier(TimeEnd1, TimeEnd2) , Over = slot(TimeStart2, TimeEnd2));	

	
	(firstTimeEarlier(TimeStart1, TimeStart2) , bothTimesEqual(TimeEnd1, TimeEnd2) , Over = slot(TimeStart2, TimeEnd2));

	
	(bothTimesEqual(TimeStart1, TimeStart2) , secondTimeEarlier(TimeEnd1, TimeEnd2) , Over = slot(TimeStart2, TimeEnd2));

	
	(bothTimesEqual(TimeStart1, TimeStart2) , bothTimesEqual(TimeEnd1, TimeEnd2) , Over = slot(TimeStart1, TimeEnd1)).