Select InvoiceId, Name
From Track T Join InvoiceLine I
Where T.TrackId = I.TrackId
Order By InvoiceId


/* OR 
SELECT I.InvoiceLineId, T.Name
FROM InvoiceLine AS I
	JOIN Track AS T ON I.TrackId = T.TrackId

-this is a faster search: 4ms to 15ms above
*/