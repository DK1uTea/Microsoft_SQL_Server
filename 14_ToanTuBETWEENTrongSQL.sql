-- Lấy danh sách các sơ có giá bán từ 10 đến 20 đô
SELECT *
FROM [dbo].[Products]
WHERE [UnitPrice] BETWEEN 10 AND 20;

SELECT *
FROM [dbo].[Products]
WHERE [UnitPrice]  >= 10 AND [UnitPrice] <= 20;

-- Lấy dsach các đơn đặt hàng trong khoảng 1996-07-01 đến ngày 1996-07-31
SELECT *
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';

-- Lấy tổng số tiền vận chuyển (Freight) của các đơn hàng đc đặt 
-- trong khoảng 1996-07-01 đến ngày 1996-07-31
SELECT SUM([Freight]) AS [TotalJulyFreight]
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';

-- Lấy dsach đơn đặt hàng có ngày đặt hàng trg khoảng từ 1/1/1997
-- đến ngày 31/12/1997 và đc vận chuyển bằng đường tàu thủy (ShipVia = 3)
SELECT *
FROM [dbo].[Orders] 
WHERE ([OrderDate] BETWEEN '1997-01-01' AND '1997-12-31') AND [ShipVia] = 3;
