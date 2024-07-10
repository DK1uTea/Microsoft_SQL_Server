-- Từ bảng Order Details hãy liệt kê 
-- các đơn đặt hàng có Unit Price 
-- nằm trong phạm vi từ 100 đến 200.
-- I - 22
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE od.UnitPrice BETWEEN 100 AND 200;

-- Đưa ra các đơn đặt hàng có 
-- Quantity bằng 10 hoặc 20
-- II - 433
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE od.Quantity IN (10, 20);

-- Từ bảng Order Details hãy liệt kê các 
-- đơn đặt hàng có Unit Price nằm trong phạm 
-- vi từ 100 đến 200 VÀ đơn hàng phải có Quantity 
-- bằng 10 hoặc 20
--- III = I AND II = 7 rows
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE (od.UnitPrice BETWEEN 100 AND 200)
		AND (od.Quantity IN (10, 20));


-- Từ bảng Order Details hãy liệt kê các 
-- đơn đặt hàng có Unit Price nằm trong phạm 
-- vi từ 100 đến 200 HOAC đơn hàng phải có Quantity 
-- bằng 10 hoặc 20
--- IV = I OR II = 448 rows
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE (od.UnitPrice BETWEEN 100 AND 200)
		OR (od.Quantity IN (10, 20));

-- Từ bảng Order Details hãy liệt kê các 
-- đơn đặt hàng có Unit Price nằm trong phạm 
-- vi từ 100 đến 200 HOAC đơn hàng phải có Quantity 
-- bằng 10 hoặc 20, DISTINCT
--- V = IV + DISTINCT = 360
SELECT DISTINCT od.OrderID
FROM [dbo].[Order Details] od
WHERE (od.UnitPrice BETWEEN 100 AND 200)
		OR (od.Quantity IN (10, 20));


-- UNION
-- V = I OR II = 360 rows
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE od.UnitPrice BETWEEN 100 AND 200
UNION
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE od.Quantity IN (10, 20);

-- IV (không có distinct) = I OR II = 455 rows = 448 + 7
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE od.UnitPrice BETWEEN 100 AND 200
UNION ALL
SELECT od.OrderID
FROM [dbo].[Order Details] od
WHERE od.Quantity IN (10, 20);


-- Hãy liệt kê toàn bộ thành phố và quốc gia tồn tại trong Suppliers
-- và Customers vs 2 tình huống sử dụng UNION và UNION ALL
SELECT DISTINCT Country
From Suppliers
UNION
SELECT DISTINCT Country
FROM Customers;

SELECT DISTINCT Country
From Suppliers
UNION ALL
SELECT DISTINCT Country
FROM Customers;

-- ALL 14 rows
-- 20 rows
select City, Country
from dbo.Customers
where Country LIKE 'U%'
union 
-- 1 row
select City, Country
from dbo.Suppliers
where City = 'London'
union
-- 122 rows
select ShipCity, ShipCountry
from dbo.Orders
where ShipCountry = 'USA';