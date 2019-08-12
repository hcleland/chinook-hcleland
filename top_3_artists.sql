--top_3_artists.sql: 
--Provide a query that shows the top 3 best selling artists.

SELECT TOP 3 ar.name as artistname, sum(il.quantity) as tracksales
FROM artist ar 
JOIN album al on ar.ArtistId = al.ArtistId 
JOIN track t on al.AlbumId = t.AlbumId 
JOIN InvoiceLine il on t.TrackId = il.TrackId 
JOIN Invoice i on il.InvoiceId = i.InvoiceId
GROUP BY ar.Name 
ORDER BY sum(il.Quantity) DESC;