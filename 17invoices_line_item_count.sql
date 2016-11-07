Select L.InvoiceId, 
	Count(InvoiceLineId) as "Number of Line Items"
From Invoice I	
	Join InvoiceLine L
Where I.InvoiceId = L.InvoiceId
Group By L.InvoiceId