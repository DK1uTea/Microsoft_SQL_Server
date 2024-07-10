-- Lọc ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ 'A'
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'A%';

-- Lọc ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ 'H' 
-- và có chữ thứ 2 là bất kì ký tự nào
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'H_%';

-- Lọc ra tất cả các đơn hàng đc gửi đến thành phố có chữ cái bắt đầu là
-- L, chữ cái thứ hai là u hoặc o
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[uo]%'

-- Lọc ra tất cả các đơn hàng đc gửi đến thành phố có chữ cái bắt đầu là
-- L, chữ cái thứ hai không phải là u hoặc o
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[^uo]%'

-- Lọc ra tất cả các đơn hàng đc gửi đến thành phố có chữ cái bắt đầu là
-- L, chữ cái thứ hai là các ký tự từ a-u
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[a-u]%'

-- Hãy lấy ra tất cả các nhà cung cấp hàng có tên công ty 
-- bắt đầu bằng chữ A và không chứa ký tự b
SELECT *
FROM [dbo].[Suppliers]
WHERE [CompanyName] LIKE 'A%[^b]%';