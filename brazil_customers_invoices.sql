SELECT Customer.FirstName, Customer.LastName, 
Invoice.InvoiceId,  Invoice.InvoiceDate, Invoice.BillingCountry
FROM Customer, Invoice
WHERE Invoice.CustomerId = Customer.CustomerId
AND Invoice.BillingCountry = "Brazil"