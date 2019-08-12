--top_2009_agent.sql: 
--Which sales agent made the most in sales in 2009?
--Hint: Use the MAX function on a subquery.

SELECT max(TotalSales.fullname), max(TotalSales.sales)
FROM 
(SELECT CONCAT(e.firstName, '', e.lastName) AS fullname, sum(i.total) as sales
FROM Employee e 
JOIN Customer c on e.EmployeeId = c.SupportRepId
JOIN Invoice i on c.CustomerId = i.CustomerId
WHERE e.Title LIKE '%agent%' and YEAR(i.InvoiceDate) = 2009
GROUP BY e.EmployeeId, e.FirstName, e.LastName) AS TotalSales