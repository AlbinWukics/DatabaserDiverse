--1-----------------------------------------------------------------------------------------------------------------------------
USE everyloop;
--SELECT COUNT(ShipCity)
--FROM Company.orders
--WHERE ShipCity Like 'London';

--SELECT COUNT(ShipCity)
--FROM Company.orders
--WHERE ShipCity NOT LIKE 'London';


--SELECT CONCAT((CAST(Count(DISTINCT (company.products.ProductName)) as FLOAT) / 77) * 100, '%')
--FROM company.products
--	JOIN company.order_details ON company.products.id = company.order_details.ProductId
--	JOIN company.orders ON company.orders.Id = company.order_details.OrderId
--	WHERE ShipCity LIKE 'London';


--2-----------------------------------------------------------------------------------------------------------------------------


--SELECT TOP 1 COUNT( DISTINCT Company.order_details.ProductId) AS 'Product ID', company.orders.ShipCity
--FROM company.order_details
--	JOIN company.orders ON company.orders.Id = company.order_details.OrderId
--	GROUP BY Company.orders.ShipCity
--	ORDER BY COUNT( company.order_details.ProductId) DESC;
	

--3-----------------------------------------------------------------------------------------------------------------------------


--SELECT SUM(Company.order_details.UnitPrice) AS 'Price', Company.orders.ShipCountry
--FROM Company.order_details
--	JOIN Company.products ON Company.products.Id = company.order_details.ProductId
--	JOIN Company.orders ON Company.Orders.Id = Company.order_details.OrderId
--WHERE company.orders.ShipCountry LIKE 'Germany' AND Company.products.Discontinued=1
--GROUP BY ShipCountry;


--4-----------------------------------------------------------------------------------------------------------------------------


--SELECT TOP 1 SUM (company.products.UnitsInStock) AS Units, company.categories.CategoryName
--FROM company.categories
--	JOIN Company.products ON company.products.CategoryId = company.categories.Id
--	GROUP BY company.categories.CategoryName
--	ORDER BY SUM(company.products.UnitsInStock) DESC;


--5-----------------------------------------------------------------------------------------------------------------------------


--SELECT TOP 1 Company.suppliers.CompanyName, SUM(company.order_details.Quantity) AS Quantity
--FROM company.suppliers
--	JOIN company.products ON company.products.SupplierId = company.suppliers.Id
--	JOIN company.order_details ON company.order_details.ProductId = company.products.Id
--	JOIN company.orders ON company.orders.Id = company.order_details.OrderId
--WHERE company.orders.OrderDate > '2013-05-31' AND company.orders.OrderDate < '2013-09-01'
--GROUP BY company.suppliers.CompanyName
--ORDER BY SUM(company.order_details.Quantity) DESC;


--2.0----------------------------------------------------------------------------------------------------------------------------


--declare @playlist varchar(max) = 'Heavy Metal Classic';

--SELECT music.genres.Name AS Genre, 
--	music.artists.Name AS Artist, 
--	music.albums.Title AS Album, 
--	music.tracks.Name AS Track, 
--	RIGHT(CAST(DATEADD(ms, music.tracks.Milliseconds, '00:00') AS time(0)),5) AS [LENGTH], 
--	CONCAT(CAST(ROUND(music.tracks.Bytes/1048576.0,2) AS numeric(36,2)), ' MB') AS [SIZE], 
--	ISNULL(music.tracks.Composer, '-') AS Composer,
--	music.playlists.Name AS Playlist
--FROM music.genres
--	JOIN music.tracks ON music.tracks.GenreId = music.genres.GenreId
--	JOIN music.playlist_track ON music.playlist_track.TrackId = music.tracks.TrackId
--	JOIN music.playlists ON music.playlists.PlaylistId = music.playlist_track.PlaylistId
--	JOIN music.albums ON music.albums.AlbumId = music.tracks.AlbumId
--	JOIN music.artists ON music.artists.ArtistId = music.albums.ArtistId
--WHERE music.playlists.Name = @playlist


--2.1----------------------------------------------------------------------------------------------------------------------------

SELECT
	music.artists.Name AS Artist,
	music.tracks.Milliseconds
FROM music.albums
	JOIN music.tracks ON music.tracks.AlbumId = music.albums.AlbumId
	JOIN music.artists ON music.artists.ArtistId = music.tracks.AlbumId
