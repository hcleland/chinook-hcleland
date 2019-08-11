--total_invoices_{year}.sql: 
--How many Invoices were there in 2009 and 2011?

SELECT * 
FROM Invoice i
WHERE YEAR(i.InvoiceDate) = 2009
OR YEAR(i.InvoiceDate) = 2011;

