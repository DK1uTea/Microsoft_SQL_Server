-- Viết câu lệnh SQL lấy ra tên của tất cả các sản phẩm
SELECT [ProductName]
FROM [dbo].[Products];

-- Viết câu lệnh SQL lấy ra tên sản phẩm, 
-- giá bán trên mỗi đơn vị, số lượng sản phẩm trên đơn vị
SELECT [ProductName], [UnitPrice], [QuantityPerUnit] 
FROM [dbo].[Products];

-- Viết câu lệnh SQL lấy ra tên công ty của khách hàng
-- và quốc gia của khách hàng đó
SELECT [CompanyName], [Country]
FROM [dbo].[Customers];

-- Viết câu lệnh SQL lấy ra tên và số điện thoại của 
-- tất cả các nhà cung cấp hàng
SELECT CompanyName, Phone
FROM dbo.Suppliers;

-- Viết câu lệnh SQL lấy ra tất cả dữ liệu từ bảng Products
SELECT *
FROM dbo.Products;

-- Viết câu lệnh SQL lấy ra tất cả dữ liệu từ bảng Customers
SELECT *
FROM dbo.Customers;

-- Viết câu lệnh SQL lấy ra tất cả dữ liệu từ bảng Suppliers
SELECT *
FROM dbo.Suppliers;

SELECT *
FROM dbo.Employees;

SELECT ShipName, ShipCountry 
FROM dbo.Orders;