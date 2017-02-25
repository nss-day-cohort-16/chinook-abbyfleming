SELECT 
	BillingCountry AS `Country`,
	MAX(Sales) AS `Sales`
FROM 
	(
	SELECT 
		SUM(Total) AS `Sales`,
		BillingCountry
	FROM Invoice
	GROUP BY BillingCountry
	)
