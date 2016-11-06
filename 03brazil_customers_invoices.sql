Select FirstName, 
	LastName, 
	InvoiceId, 
	InvoiceDate, 
	BillingCountry
From Customer C
Join Invoice I on C.CustomerId = I.CustomerId
Where Country = "Brazil"