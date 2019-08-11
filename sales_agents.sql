--sales_agents.sql: 
-- Provide a query showing only the Employees who are Sales Agents.

SELECT e.firstName, e.lastName, e.title
FROM Employee e 
WHERE e.title LIKE '%agent%';