--unique_invoice_countries.sql: 
--Provide a query showing a unique/distinct list of billing countries from the Invoice table.

SELECT DISTINCT i.billingCountry
FROM Invoice i;