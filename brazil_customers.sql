-- brazil_customers.sql: 
-- Provide a query only showing the Customers from Brazil.

SELECT c.FirstName, c.LastName, c.Country
FROM Customer c
WHERE Country IN ('Brazil');