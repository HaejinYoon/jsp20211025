SELECT * FROM OrderDetails;
SELECT * FROM Orders;
SELECT * FROM OrderDetails od JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID
;
-- 상품별 판매수량
SELECT 
    p.ProductName, od.Quantity
FROM
    OrderDetails od
        JOIN
    Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID
ORDER BY 1
;
SELECT p.ProductID, p.ProductName, sum(od.Quantity) 
FROM OrderDetails od JOIN Products p ON od.ProductID=p.ProductID
GROUP BY p.ProductID
;
-- 상품별 매출액
SELECT 
    p.ProductName, sum(od.Quantity) * p.Price '상품별 매출액'
FROM
    OrderDetails od
        JOIN
    Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductID
ORDER BY 1
;
SELECT p.ProductID, p.ProductName, sum(od.Quantity) *p.Price '합'
FROM OrderDetails od JOIN Products p ON od.ProductID=p.ProductID
GROUP BY p.ProductID
;

-- 날짜별 매출액
SELECT 
--    o.OrderDate, p.ProductID, sum(od.Quantity * p.Price) '날짜별 매출액'
*
FROM
    OrderDetails od
        JOIN
    Products p ON od.ProductID = p.ProductID
        JOIN
    Orders o ON o.OrderID = od.OrderID
GROUP BY o.OrderDate
ORDER BY 1
;