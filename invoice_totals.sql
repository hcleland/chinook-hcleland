--invoice_totals.sql: 
--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.Total, c.firstName, c.lastName, c.country, e.firstName, e.lastName
FROM Invoice i 
LEFT JOIN Customer c 
ON (i.customerId = c.customerId)
LEFT JOIN Employee e 
ON (e.EmployeeId = c.SupportRepId);
