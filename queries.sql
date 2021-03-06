/* Practice Joins question 1 */

/*SELECT * 
FROM Invoice i
JOIN InvoiceLine il ON il.invoiceId = i.invoiceId
WHERE il.UnitPrice > 0.99; */

/* Practice Joins question 2*/

/* SELECT i.InvoiceDate, c. FirstName, c.Lastname, i.Total
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId; */

/* Practice Joins question 3 */

/* SELECT c.FirstName, c.LastName, e.FirstName, e.LastName
FROM Customer c 
JOIN Employee e
ON c.SupportRepId = e.EmployeeId; */

/* Practice Joins question 4 */

/* SELECT al.Title, ar.Name 
FROM Album al 
JOIN Artist ar
ON al.ArtistId = ar.ArtistId; */

/* Practice Joins question 5 */

/* SELECT pt.TrackId
FROM PlaylistTrack pt
JOIN Playlist p ON p.PlaylistId = pt.PlaylistId
WHERE p.Name = 'Music'; */

/* Practice Joins question 6 */

/* SELECT t.Name
FROM Track t
JOIN PlaylistTrack pt ON pt.TrackId = t.TrackId
WHERE pt.PlaylistId = 5; */

/* Practice Joins question 7 */

/* SELECT t.Name, p.Name
FROM Track t
JOIN PlaylistTrack pt ON t.TrackId = pt.TrackId
JOIN Playlist p 
ON pt.PlaylistId = p.PlaylistId; */

/* Practice Joins question 8 */

/* SELECT t.Name, a.Title 
FROM Track t 
JOIN Album a ON t.AlbumId = a.AlbumId 
JOIN Genre g ON g.GenreId = t.GenreId
WHERE g.Name = 'Alternative'; */

/* PRACTICE JOINS DONE */

/* Practice nested queries question 1 */

/* SELECT *
FROM Invoice 
WHERE InvoiceId IN 
(SELECT InvoiceId FROM InvoiceLine 
 Where UnitPrice > 0.99); */

/* Practice nested queries question 2 */

/* SELECT *
FROM PlaylistTrack
WHERE PlaylistId = (
  SELECT PlaylistId 
  FROM Playlist 
  WHERE Name ="Music"); */
  
/* Practice nested queries question 3 */

/* SELECT Name
FROM TRACK
WHERE TrackId IN (
  SELECT TrackId
  FROM PlaylistTrack
  WHERE PlaylistId=5); */
  
  /* Practice nested queries question 4 */

/* SELECT *
FROM Track
WHERE GenreID IN(
  SELECT GenreId
  FROM Genre
  WHERE Name = "Comedy");
 */
 
/*  Practice nested queries question 5 */

/* SELECT *
FROM Track
WHERE AlbumId IN (
  SELECT AlbumId
  FROM Album
  WHERE Title = "Fireball");
  */
  
/* Practice nested queries question 6 */

/* SELECT *
FROM Track
WHERE AlbumId IN (
  SELECT AlbumId
  FROM Album
  WHERE ArtistId IN (
    SELECT ArtistId 
    FROM Artist 
    WHERE Name = "Queen"));
 */
/* PRACTICE NESTED QUERIES DONE */

/* Practice Updating Rows question 1 */

/* UPDATE Customer
SET Fax = null
WHERE Fax IS NOT null; */

/* Practice Updating Rows question 2  */

/* UPDATE Customer
SET Fax = null
WHERE Fax IS NOT null; */

/* Practice Updating Rows question 3 */

/* UPDATE Customer 
SET LastName = "Thompson" 
WHERE FirstName = "Julia" AND LastName = "Barnett"; */

/* Practice Updating Rows question 4 */

/* UPDATE Customer
SET SupportRepId = 4
WHERE Email = "luisrojas@yahoo.cl"; */

/* Practice Updating Rows question 5 */

/* UPDATE Track
SET Composer = "The darkness around us"
WHERE GenreId = ( SELECT GenreId FROM Genre WHERE Name = "Metal" )
AND Composer IS null; */

/* PRACTICE UPDATING ROWS DONE */

/* Group By question 1 */

/* SELECT Count(*), g.Name
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY g.Name; */

/* Group By question 2 */

/* SELECT Count(*), g.Name
FROM Track t
JOIN Genre g ON g.GenreId = t.GenreId
WHERE g.Name = 'Pop' OR g.Name = 'Rock'
GROUP BY g.Name; */

/* Group By question 3 */

/* SELECT ar.Name, Count(*)
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
GROUP BY al.ArtistId; */

/* GROUP BY DONE */

/* Use Distinct question 1 */

/* SELECT DISTINCT Composer
FROM Track; */

/* Use Distinct question 2 */

/* SELECT DISTINCT BillingPostalCode
FROM Invoice; */

/* Use Distinct question 3 */

/* SELECT DISTINCT Company
FROM Customer; */

/* USE DISTINCT DONE */

/* Delete Rows */

/* CREATE TABLE practice_delete ( Name string, Type string, Value integer );
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "silver", 100);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "silver", 100);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);

SELECT * FROM practice_delete; */

/* Delete Rows question 1 */

/* DELETE 
FROM practice_delete 
WHERE Type = "bronze"; */

/* Delete Rows question 2 */

/* DELETE 
FROM practice_delete 
WHERE Type = "silver"; */

/* Delete Rows question 3 */

/* DELETE 
FROM practice_delete 
WHERE Value = 150; */

/* DELETE ROWS DONE */

