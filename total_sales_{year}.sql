--total_sales_{year}.sql: 
--What are the respective total sales for each of those years?

SELECT SUM(i.total) as totalSales2009
FROM Invoice i 
WHERE YEAR(i.InvoiceDate) = 2009;

SELECT SUM(i.total) as totalSales2011
FROM Invoice i 
WHERE YEAR(i.InvoiceDate) = 2011;
