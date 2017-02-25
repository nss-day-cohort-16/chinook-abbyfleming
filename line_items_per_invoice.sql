SELECT count(InvoiceLineId) AS `Line Item`
FROM InvoiceLine
GROUP BY InvoiceId
