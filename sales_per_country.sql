SELECT 
	BillingCountry, 
	SUM(Total) AS `Total Sales`
FROM Invoice
GROUP BY BillingCountry