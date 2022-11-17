----1
--USE everyloop;
--SELECT title, CONCAT('S', FORMAT(season, '00'), 'E', FORMAT(episode,'00')) as episode
--FROM GameOfThrones;

--2
--USE everyloop;
--SELECT *
--INTO NewUsers
--FROM Users
--update NewUsers 
--set UserName = lower( Left(FirstName, 2) + Left(LastName, 2)); 
--SELECT *
--FROM NewUsers;

--3
--SELECT * 
--INTO Airports2
--FROM Airports;

--UPDATE Airports2
--SET Time = '-'
--WHERE Time is null;

--UPDATE Airports2
--SET DST = '-'
--WHERE DST is null;

--4
--SELECT * 
--INTO Elements2
--FROM Elements;

--DELETE FROM Elements2
--WHERE Name IN ('Erbium','Helium','Nitrogen','Platinum','Selenium');

--DELETE FROM Elements2
--WHERE Substring([Name], 1, 1) IN ('d', 'k', 'm', 'o', 'u');

--5




