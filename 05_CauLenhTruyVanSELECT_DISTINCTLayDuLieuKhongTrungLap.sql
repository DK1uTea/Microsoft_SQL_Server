-- Viết câu lệnh SQL lấy ra tên các quốc gia (Country) khác nhau
-- từ bảng Customers
SELECT DISTINCT [Country]
FROM [dbo].[Customers];

--Lấy ra tên các mã số bưu điện (PostalCode) khác nhau từ bảng 
-- Nhà cung cấp - Suppliers
SELECT DISTINCT PostalCode
FROM Suppliers;

-- Lấy ra các dữ liệu khác nhau về họ cảu nhân viên (LastName) và cách
-- gọi danh hiệu lịch sự (TitleOfCourtesy) của nhân viên từ bảng Employees
SELECT DISTINCT LastName, TitleOfCourtesy
FROM dbo.Employees;

SELECT DISTINCT TitleOfCourtesy
FROM dbo.Employees;

-- Lấy ra mã đơn vị vận chuyển (ShipVia) khác nhau của các đơn hàng - Orders
SELECT DISTINCT ShipVia
FROM dbo.Orders;