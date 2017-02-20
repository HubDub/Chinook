Select InvoiceId, Count(Quantity) as LineItems
From InvoiceLine
	Where InvoiceId = 37


/* OR
SELECT InvoiceId, COUNT(InvoiceLineId) AS Count
FROM InvoiceLine
GROUP BY InvoiceId
HAVING InvoiceId = 37
*/