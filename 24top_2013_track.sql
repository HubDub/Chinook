Select T.Name, Count(L.TrackId), L.TrackId
From InvoiceLine L
	Join Track T on L.TrackId = T.TrackId
	Join Invoice I on L.InvoiceId = I.InvoiceId
Where I.InvoiceDate Like "2013%"
Group By L.TrackId
Order By L.TrackId Asc

/*All tracks sold once. There is no most purchased track*/