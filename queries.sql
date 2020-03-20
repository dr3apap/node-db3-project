-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Product.Id,
  c.Id
FROM Product JOIN Category As c ON Product.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [Order].Id, Shipper.CompanyName
FROM [Order] JOIN Shipper ON [Order].ShippedDate = Shipper.CompanyName
ORDER BY ASC;

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName, QuantityPerUNit, "Order".Id
FROM Product AS p JOIN "Order" As o ON o.Id = 10251
LIMIT 3;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.Id, c.CompanyName, e.LastName
FROM [Order] As o JOIN CUSTOMER  AS c ON o.CustomerId = c.Id
  JOIN Employee AS e ON o.EmployeeId = e.Id
LIMIT 16; 
