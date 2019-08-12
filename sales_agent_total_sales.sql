--sales_agent_total_sales.sql: 
--Provide a query that shows total sales made by each sales agent.

SELECT SUM(i.Total) as Total, e.EmployeeId
FROM Employee e
LEFT JOIN Customer c 
ON (e.employeeId = c.supportRepId)
LEFT JOIN Invoice i 
ON (c.CustomerId = i.CustomerId)
WHERE e.Title LIKE '%agent'
GROUP BY e.EmployeeId;

