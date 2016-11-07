Select InvoiceId, Count(InvoiceLineId) as "Number of Line Items"
From InvoiceLine
Group By InvoiceId