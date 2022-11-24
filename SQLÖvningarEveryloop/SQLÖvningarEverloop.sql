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
--USE everyloop;
--SELECT [Symbol], [Name]
--INTO Elements3
--FROM Elements;

--ALTER TABLE Elements3
--ADD [Y/N] nvarchar (max)

--SELECT *,
--CASE 
--	WHEN SUBSTRING([Name],1,2) = [Symbol]
--	THEN 'Yes'
--	WHEN SUBSTRING([Name],1,1) = [Symbol]
--	THEN 'Yes'
--	ELSE 'No'
--END AS [Y/N]
--FROM Elements3;

--6
--USE everyloop;
--SELECT [Name],[Red],[Green],[Blue]
--INTO Colors2
--FROM Colors;

--SELECT *,
--CONCAT ('#', FORMAT ( [Red], 'X2'), FORMAT ( [Green], 'X2' ), FORMAT ( [Blue], 'X2' )) AS Hex
--FROM Colors2;

--7
USE everyloop;
--SELECT [Integer],[String]
--INTO Types2
--FROM Types;
SELECT * FROM Types;


SELECT *,
CASE 
	WHEN ([Integer] % 2) = 0
	THEN '0'
	ELSE '1'
END AS [Bool]
FROM Types2

SELECT *,
CAST(Integer AS Float)/100
FROM Types2;


 







	





