Select InvoiceId, Count(Quantity) as LineItems
From InvoiceLine
	Where InvoiceId = 37