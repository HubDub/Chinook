Select InvoiceId, T.Name, A.Name
From Track T Join InvoiceLine I Join Album R Join Artist A
Where T.TrackId = I.TrackId
	AND T.AlbumId = R.AlbumId
	AND R.ArtistId = A.ArtistId
Order By InvoiceId
