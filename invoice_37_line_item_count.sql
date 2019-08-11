--invoice_37_line_item_count.sql: 
--Looking at the InvoiceLine table, 
--provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(iL.InvoiceLineId) as InvoiceID37LineItems
FROM InvoiceLine iL 
WHERE iL.InvoiceId = 37;


