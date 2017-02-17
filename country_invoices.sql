SELECT 
	Invoice.BillingCountry, 
	COUNT(Invoice.InvoiceId) AS `Invoices`
FROM Invoice
GROUP BY Invoice.BillingCountry