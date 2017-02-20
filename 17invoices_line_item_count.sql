Select L.InvoiceId, 
	Count(InvoiceLineId) as "Number of Line Items"
From Invoice I	
	Join InvoiceLine L
Where I.InvoiceId = L.InvoiceId
Group By L.InvoiceId

/* OR 
SELECT 	I.InvoiceId AS 'Invoice Id', 
		COUNT(IL.InvoiceLineId) AS 'Invoice Line Count' 
FROM Invoice AS I
	JOIN InvoiceLine AS IL ON I.InvoiceId = IL.InvoiceId
GROUP BY I.InvoiceId
*/