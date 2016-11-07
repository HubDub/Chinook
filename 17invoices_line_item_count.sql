Select L.InvoiceId, Count(InvoiceLineId)
From Invoice I	
	Join InvoiceLine L
Where I.InvoiceId = L.InvoiceId
Group By L.InvoiceId