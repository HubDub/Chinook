Select InvoiceId, T.Name, A.Name
From Track T Join InvoiceLine I Join Album R Join Artist A
Where T.TrackId = I.TrackId
	AND T.AlbumId = R.AlbumId
	AND R.ArtistId = A.ArtistId
Order By InvoiceId


/* OR 
SELECT 	I.InvoiceLineId,
		T.Name,
		Ar.Name
FROM InvoiceLine AS I
	JOIN Track AS T ON I.TrackId = T.TrackId
	JOIN Album AS A ON T.AlbumId = A.AlbumId
	JOIN ARTIST AS Ar ON A.ArtistId = Ar.ArtistId
ORDER BY I.InvoiceLineId

first one is 10ms, second is 8ms
*/