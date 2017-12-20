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