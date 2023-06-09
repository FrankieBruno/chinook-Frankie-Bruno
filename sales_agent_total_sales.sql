/*Provide a query that shows total sales made by each sales agent. The resultant table should include:
Employee full name
Total sales for each employee (all time)*/

SELECT Employee.FirstName, Employee.LastName, CAST(SUM(Invoice.Total) AS INTEGER)
FROM Invoice
JOIN Customer ON Invoice.customerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.FirstName