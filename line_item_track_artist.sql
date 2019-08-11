--line_item_track_artist.sql: 
--Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT i.InvoiceLineId, t.Name as TrackName

, aT.Name as ArtistName 
FROM InvoiceLine i
LEFT JOIN Track t
ON (i.TrackId = t.TrackId)
LEFT JOIN Album a
ON (a.AlbumId = t.AlbumId)
LEFT JOIN Artist aT 
ON (a.ArtistId = aT.ArtistId)
ORDER BY i.InvoiceLineId;
