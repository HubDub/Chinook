Select 
	(Select sum(Total)
	From Invoice
	Where InvoiceDate like "2009%") as "Total Sales 2009", 
	(Select sum(Total)
	From Invoice
	Where InvoiceDate like "2011%") as "Total Sales 2011"