Select BillingCountry, Sum(Total) as "Total Sales"
From Invoice
Group By BillingCountry