SELECT p.ProductID, p.ProductName --2
FROM dbo.Products p; --1

SELECT p.ProductID, p.ProductName --3
FROM dbo.Products p --1
WHERE p.CategoryID = 1; --2

SELECT p.CategoryID, COUNT(p.ProductID) AS [TotalProducts] --4
FROM dbo.Products p --1
WHERE p.CategoryID IN (1,2,3) --2
GROUP BY p.CategoryID; --3

SELECT p.CategoryID, COUNT(p.ProductID) AS [TotalProducts] --5
FROM dbo.Products p --1
WHERE p.CategoryID IN (1,2,3) --2
GROUP BY p.CategoryID --3
HAVING COUNT(p.ProductID) >= 13; --4 [TotalProducts] chưa tồn tại nên ko gọi dc

SELECT p.CategoryID, COUNT(p.ProductID) AS [TotalProducts] --5
FROM dbo.Products p --1
WHERE p.CategoryID IN (1,2,3,4,5,6,7) --2
GROUP BY p.CategoryID --3
HAVING COUNT(p.ProductID) >= 10 --4 [TotalProducts] chưa tồn tại
ORDER BY [TotalProducts] ASC; --6 [TotalProducts] đã tồn tại

SELECT TOP 3 --11
p.ProductID,o.Discount, o2.ShipCountry --9
FROM dbo.Products p --1
INNER --4 
JOIN dbo.[Order Details] o --2
ON p.ProductID = o.ProductID --3
INNER --7
JOIN dbo.Orders o2 --5
ON o.OrderID = o2.OrderID --6
WHERE o.Discount = 0.25 AND o2.ShipCountry = 'Germany' --8
ORDER BY p.ProductID DESC; --10