-- Lấy ra tất cả các đơn hàng chưa được giao hàng
SELECT * 
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL;

SELECT COUNT(*) AS [soLuong] 
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL;

-- Lấy danh sách các khách hàng có khu vực (Region) không bị NULL
SELECT *
FROM [dbo].[Customers]
WHERE [Region] IS NOT NULL;

-- Lấy danh sách khách hàng không có tên công ty (CompanyName)
SELECT *
FROM [dbo].[Customers]
WHERE [CompanyName] IS NULL;

-- Lấy ra tất cả các đơn hàng chưa được giao hàng 
-- và có khu vực giao hàng (ShipRegion) không bị NULL
SELECT *
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL AND [ShipRegion] IS NOT NULL;
