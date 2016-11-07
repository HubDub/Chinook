Select T.Name, Count(L.TrackId) as TracksSold
From Track T
	Join InvoiceLine L
Where T.TrackId = L.TrackId
Group By L.TrackId
Order By TracksSold Desc 
/*There are 256 tracks sold twice. None sold more.*/
