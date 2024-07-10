-- Liệt kê tất cả các nhà cung cấp theo thứ tự tên đơn vị CompanyName từ A->Z
SELECT *
FROM [dbo].[Suppliers]
ORDER BY [CompanyName] ASC;

-- Liệt kê tất cả các sản phẩm theo thứ tự giá giảm dần
SELECT *
FROM [dbo].[Products]
ORDER BY [UnitPrice] DESC;

-- Liệt kê tất cả các nhân viên theo thứ tự họ và tên đệm từ A->Z
SELECT *
FROM [dbo].[Employees]
ORDER BY [LastName] ASC, [FirstName] ASC;

-- Lấy ra 1 sản phẩm có số lượng bán cao nhất từ bảng Order Details
SELECT TOP 1 *
FROM [dbo].[Order Details]
ORDER BY Quantity DESC;

-- Liệt kê danh sách các đơn đặt hàng (OrderID) trong bảng Orders theo 
-- thứ tự giảm dần của ngày đặt hàng (OrderDate)
SELECT [OrderID]
FROM [dbo].[Orders]
ORDER BY [OrderDate] DESC;

-- Liệt kê tên, đơn giá, số lượng trong kho (UnitsInStock) của tất cả các sản
-- phẩm trong bảng Products, theo thứ tự giảm dần của UnitsInStock
SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock]
FROM [dbo].[Products]
ORDER BY [UnitsInStock] DESC;

