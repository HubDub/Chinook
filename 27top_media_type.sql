Select Count(M.MediaTypeId) as NumberSold, 
	M.Name as "Media Type Name"
From InvoiceLine L
	Join Track T on L.TrackId = T.TrackId
	Join MediaType M on T.MediaTypeId = M.MediaTypeId
Group By M.MediaTypeId 
Order By M.MediaTypeId Asc limit 1
