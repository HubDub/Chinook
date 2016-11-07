Select 
	(Select Count(*) 
	From Invoice
	Where InvoiceDate like "2009%") 
		as "Total Invoice Count for 2009",
	(Select Count(*)
	From Invoice
	Where InvoiceDate like "2011%")
		as "Total Invoice Count for 2011"
	
/*
Select 
	(Select Count(*)
	From Invoice
	Where strftime('Y', invoice.invoiceDate) = "2009")
		as "Total Invoice Count for 2009",
	(Select Count(*)
	From Invoice
	Where strftime('Y', invoice.invoiceDate) = "2011")
		as "Total Invoice Count for 2011"
*/