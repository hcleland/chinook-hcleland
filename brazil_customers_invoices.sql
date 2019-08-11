-- brazil_customers_invoices.sql: 
-- Provide a query showing the Invoices of customers who are from Brazil. 
-- The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT c.firstName, c.lastName, c.Country, i.invoiceId, i.invoiceDate, i.billingCountry
FROM Invoice i LEFT JOIN Customer c
ON c.customerId = i.customerId
WHERE country IN ('Brazil')
ORDER BY InvoiceDateit;

