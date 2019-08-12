--top_2013_track.sql: 
--Provide a query that shows the most purchased track of 2013.

SELECT max(TopTracks.trackname), max(TopTracks.tracksales)
FROM
(SELECT t.name as trackname, sum(il.quantity) as tracksales
FROM track t
JOIN InvoiceLine il on t.trackId = il.TrackId
JOIN invoice i on il.InvoiceId = i.InvoiceId
WHERE YEAR(i.InvoiceDate) = 2013
GROUP BY t.name) AS TopTracks;

SELECT TOP 1 t.name as trackname, sum(il.quantity) as tracksales 
FROM track t 
JOIN InvoiceLine il on t.TrackId = il.TrackId
JOIN Invoice i on il.InvoiceId = i.InvoiceId
WHERE YEAR(i.InvoiceDate) = 2013
GROUP BY t.Name
ORDER BY sum(il.Quantity) DESC;