Select InvoiceId, Name
From Track T Join InvoiceLine I
Where T.TrackId = I.TrackId
Order By InvoiceId
