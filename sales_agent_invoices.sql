--sales_agent_invoices.sql: 
--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.

SELECT i.invoiceId, i.invoiceDate, c.SupportRepId, e.FirstName, e.LastName
FROM Invoice i 
LEFT JOIN Customer c
ON c.customerId = i.customerId
LEFT JOIN Employee e
ON e.employeeId = c.supportRepId;



SELECT i.invoiceId, i.invoiceDate, c.SupportRepId, e.FirstName, (select LastName from Employee)
FROM Invoice i 
LEFT JOIN Customer c
ON c.customerId = i.customerId;