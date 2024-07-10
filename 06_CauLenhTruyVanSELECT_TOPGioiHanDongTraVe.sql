-- Lấy ra 5 dòng đầu tiên trong bảng Customers
SELECT TOP 5 * 
FROM dbo.Customers;

-- Lấy ra 30% nhân viên của công ty hiện tại
SELECT TOP 30 PERCENT *
FROM dbo.Employees;

-- Lấy ra các mã khách hàng với quy định là mã khách hàng không được trùng lặp,
-- chỉ lấy 5 dòng dữ liệu đầu tiên.
SELECT DISTINCT TOP 5 CustomerID
FROM dbo.Orders;

-- Lấy ra các sản phẩm có mã thể loại không bị trùng lặp
-- và chỉ lấy ra 3 dòng đầu tiên
SELECT DISTINCT TOP 3 CategoryID
FROM  dbo.Products;

SELECT DISTINCT TOP 5 EmployeeID, CustomerID
FROM dbo.Orders;
