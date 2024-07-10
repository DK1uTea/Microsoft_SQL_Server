-- Hãy lọc ra tất cả các đơn hàng với đk:
-- a. Đơn hàng đc giao đến germany, uk, brazil
-- b. Đơn hàng đc giao đến các quốc gia khác germany, uk, brazil

-- a
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] IN ('Germany', 'UK', 'Brazil');
--b
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] NOT IN ('Germany', 'UK', 'Brazil');

-- Lấy ra các sản phẩm có mã thể loại khác với 2,3 và 4
SELECT *
FROM [dbo].[Products]
WHERE [CategoryID] NOT IN (2, 3, 4);

-- 1. Hãy liệt kê các nhân viên không phải là nữ từ bảng nhân viên
SELECT *
FROM [dbo].[Employees]
WHERE [TitleOfCourtesy] NOT IN ('Mrs.', 'Ms.');
-- 2. Hãy liệt kê các nhân viên là nữ từ bảng nhân viên
SELECT *
FROM [dbo].[Employees]
WHERE [TitleOfCourtesy] IN ('Mrs.', 'Ms.');

-- Hãy lấy ra tất cả các khách hàng đến từ các thành phố sau đây
-- Berlin, London, Warszawa
select *
from [dbo].[Customers]
where [City] IN ('Berlin', 'London', 'Warszawa');
