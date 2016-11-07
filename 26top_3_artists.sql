Select A.Name, Count(L.TrackId) as TimesSold
From InvoiceLine L
	Join Track T on L.TrackId = T.TrackId
	Join Album Al on T.AlbumId = Al.AlbumId
	Join Artist A on Al.ArtistId = A.ArtistId
Group By A.Name
Order By TimesSold Desc limit 3