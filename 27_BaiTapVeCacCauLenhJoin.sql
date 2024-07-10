-- Inner Join
-- Liệt kê tên sp và tên nhà cung cấp của các sản phẩm đã đc đặt hàng
-- trong bảng Order Details. Sdung Inner Join để kết hợp bảng Order Details
-- với các bảng liên quan để lấy thông tin sản phẩm và nhà cung cấp
SELECT DISTINCT od.ProductID, p.ProductName, 
				s.ContactName, s.CompanyName
FROM [dbo].[Order Details] AS od
INNER JOIN dbo.Products AS p
ON od.ProductID = p.ProductID
INNER JOIN dbo.Suppliers AS s
ON p.SupplierID = s.SupplierID;

-- LEFT JOIN
-- Liệt kê tên khách hàng và tên nhân viên phụ trách của các đơn hàng
-- trong bảng Orders. Bao gồm cả các đơn hàng không có nhân viên phụ
-- trách. Sdung left join để kết hợp bảng Orders với bảng Employees 
-- để lấy thông tin về khách hàng và nhân viên phụ trách.
SELECT o.OrderID, o.EmployeeID, e.FirstName, e.LastName, c.CompanyName
FROM dbo.Orders AS o
LEFT JOIN dbo.Employees AS e
ON o.EmployeeID = e.EmployeeID
LEFT JOIN dbo.Customers AS c
ON c.CustomerID = o.CustomerID;

-- RIGHT JOIN
-- Liệt kê tên khách hàng và tên nhân viên phụ trách của các đơn hàng
-- trong bảng Orders. Bao gồm cả các khách hàng không có đơn hàng.
-- Sdung Right Join để kết hợp bảng Orders với bảng Customers để lấy
-- thông tin về khách hàng và nhân viên phụ trách
SELECT o.OrderID, o.EmployeeID, e.FirstName, e.LastName, c.CompanyName
FROM dbo.Orders AS o
RIGHT JOIN dbo.Employees AS e
ON o.EmployeeID = e.EmployeeID
RIGHT JOIN dbo.Customers AS c
ON c.CustomerID = o.CustomerID;

-- FULL JOIN
-- Liệt kê danh mục và tên nhà cung cấp các sản phẩm trong bảng 
-- Products. Bao gồm cả các danh mục và nhà cung cấp không có sản phẩm
-- Sdung FULL JOIN hoặc kết hợp Left join và Right join để lấy 
-- thông tin về danh mục và nhà cung cấp
SELECT DISTINCT p.ProductID, p.ProductName, 
				s.CompanyName, c.CategoryName
FROM [dbo].Products AS p
FULL JOIN dbo.Suppliers AS s
ON s.SupplierID = p.SupplierID
FULL JOIN dbo.Categories AS c
ON c.CategoryID = p.CategoryID;

-- INNER JOIN
-- Liệt kê tên khách hàng và tên sản phẩm đã đc đặt hàng trong bảng 
-- Orders và Orders Details. Sử dụng INNER JOIN để kết hợp bảng
-- Orders và Order Details để lấy thông tin khách hàng và sản phẩm
-- đã được đặt hàng
SELECT o.OrderID, o.CustomerID,c.CompanyName, p.ProductID, p.ProductName
FROM dbo.Orders AS o
INNER JOIN dbo.[Order Details] AS od
ON od.OrderID = o.OrderID
INNER JOIN dbo.Customers AS c
ON c.CustomerID = o.CustomerID
INNER JOIN dbo.Products AS p
ON p.ProductID = od.ProductID;

-- FULL JOIN
-- Liệt kê tên nhân viên và tên khách hàng của các đơn hàng trong bảng
-- Orders. Bao gồm cả các đơn hàng không có nhân viên hoặc khách hàng tương ứng
-- Sdung FULL JOIN hoặc LEFT JOIN và RIGHT JOIN để kết hợp bảng
-- Orders với bảng Employees và Custommers để lấy thông tin vầ nhân 
-- viên và khách hàng.
SELECT o.OrderID, o.EmployeeID, e.LastName, e.FirstName, c.CompanyName
FROM dbo.Orders AS o
FULL JOIN dbo.Employees AS e
ON e.EmployeeID = o.EmployeeID
FULL JOIN dbo.Customers AS c
ON c.CustomerID = o.CustomerID;