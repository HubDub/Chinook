Select BillingCountry, Count(BillingCountry) as "Number Invoices"
From Invoice
Group By BillingCountry