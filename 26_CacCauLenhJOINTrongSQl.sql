-- Từ Products và Categories
-- Mã thể loại
-- Tên thể loại
-- Mã sản phẩm
-- Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Categories AS c
INNER JOIN dbo.Products AS p
ON c.CategoryID = p.CategoryID;

-- Từ Products và Categories
-- Mã thể loại
-- Tên thể loại
-- Số lượng sản phẩm
SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID) AS [TotalProducts]
FROM dbo.Categories AS c
INNER JOIN dbo.Products AS p
ON c.CategoryID = p.CategoryID
GROUP BY C.CategoryID, C.CategoryName

-- Orders và Customers
-- Mã đơn hàng
-- Tên công ty khách hàng
SELECT o.OrderID, c.CompanyName
FROM dbo.Orders AS o
INNER JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID

-- Sử dụng Inner Join và Left Join
-- Từ Products và Categories
-- Mã thể loại
-- Tên thể loại
-- Mã sản phẩm
-- Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Categories AS c
INNER JOIN dbo.Products AS p
ON c.CategoryID = p.CategoryID;

SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Categories AS c
LEFT JOIN dbo.Products AS p
ON c.CategoryID = p.CategoryID;


SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID) AS [TotalProducts]
FROM dbo.Categories AS c
LEFT JOIN dbo.Products AS p
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID, c.CategoryName;


-- Sử dụng Right Join
-- Orders và Customers
-- Mã đơn hàng
-- Tên công ty khách hàng
SELECT o.OrderID, c.CompanyName
FROM dbo.Orders AS o
RIGHT JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID;

SELECT c.CompanyName, COUNT(o.OrderID) AS [TotalOrders]
FROM dbo.Orders AS o
RIGHT JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName;


-- Sử dụng FULL OUTER JOIN
-- Từ Products và Categories
-- Mã thể loại
-- Tên thể loại
-- Mã sản phẩm
-- Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Categories AS c
FULL JOIN dbo.Products AS p
ON c.CategoryID = p.CategoryID;


-- INNER JOIN
-- Hãy liệt kê tên nhân viên và tên khách hàng của các đơn hàng
-- trong bảng Orders
SELECT o.CustomerID, c.ContactName, o.EmployeeID,  
		e.FirstName, e.LastName
FROM dbo.Orders AS o
INNER JOIN dbo.Employees AS e
ON o.EmployeeID = e.EmployeeID
INNER JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID;

-- LEFT JOIN
-- Hãy liệt kê tên nhà cung cấp và tên sản phẩm của các sản phẩm
-- trong bảng Products, bao gồm tất cả các sản phẩm không có nhà cung câp
SELECT p.ProductID, p.ProductName, s.SupplierID, s.ContactName
FROM dbo.Products AS p
LEFT JOIN dbo.Suppliers AS s
ON p.SupplierID = s.SupplierID

-- RIGHT JOIN
-- Hãy liệt kê tên khách hàng và tên đơn hàng của các đơn hàng
-- trong bảng Orders, bao gồm cả các khách hàng không có đơn hàng
SELECT o.OrderID, c.ContactName, COUNT(o.OrderID) AS [TotalsOrders]
FROM dbo.Orders AS o
RIGHT JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID
GROUP BY O.OrderID, C.ContactName;

-- FULL JOIN
-- Hãy liệt kê tên danh mục và tên nhà cung cấp của các sản phẩm trong
-- bảng Products, bao gồm cả các danh mục và nhà cung cấp không có sp
SELECT c.CategoryName, s.ContactName, p.ProductID, p.ProductName
FROM dbo.Products AS p
FULL JOIN dbo.Categories AS c
ON p.CategoryID = c.CategoryID
FULL JOIN dbo.Suppliers AS s
ON p.SupplierID = s.SupplierID