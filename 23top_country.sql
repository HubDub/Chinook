Select BillingCountry, Max(TotalSales) as "Total Spent"
From (
Select BillingCountry, Sum(Total) as TotalSales
From Invoice
Group By BillingCountry)