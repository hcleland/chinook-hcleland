--invoices_line_item_count.sql: 
--Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT COUNT(l.InvoiceLineId) as InvoiceLines, l.InvoiceId
FROM Invoice i
LEFT JOIN InvoiceLine l
ON (i.InvoiceId = l.InvoiceId)
GROUP BY l.InvoiceId;

--SELECT *
--FROM InvoiceLine 
--WHERE InvoiceLine.InvoiceId = 3;