USE test;

SELECT count(CustomerID) FROM Customers;

SELECT Country, count(CustomerID) FROM Customers
GROUP BY Country
ORDER BY 2;

-- 연습1 : 나라별 Supplier 수 조회
SELECT Country, count(SupplierID) FROM Suppliers
GROUP BY Country;

-- 연습2 : 가장 많은 고객이 있는 나라(들)
SELECT 
    *
FROM
    (SELECT 
        Country, COUNT(CustomerID) Count
    FROM
        Customers
    GROUP BY Country) B
WHERE
    count = (SELECT 
            MAX(Count)
        FROM
            (SELECT 
                Country, COUNT(CustomerID) Count
            FROM
                Customers
            GROUP BY Country) A);
            
-- 연습 가장 적은 고객이 있는 나라(들) 조회
SELECT 
    *
FROM
    (SELECT 
        Country, COUNT(CustomerID) Count
    FROM
        Customers
    GROUP BY Country) B
WHERE
    count = (SELECT 
            MIN(Count)
        FROM
            (SELECT 
                Country, COUNT(CustomerID) Count
            FROM
                Customers
            GROUP BY Country) A);
            
-- 연습4 : 고객별 주문 수 조회
-- table : Customers, Orders
SELECT CustomerID, count(CustomerID) FROM Orders GROUP BY CustomerID;

-- 고객이름도 조회
SELECT  o.CustomerID, c.CustomerName, count(o.CustomerID) FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY CustomerID;

-- 연습 5 : 고객별 총 주문한 수량 (CustomerID, 총 주문수량)
SELECT 
    c.CustomerID,
    c.CustomerName,
    SUM(od.Quantity) '총 주문 수량'
FROM
    OrderDetails od
        JOIN
    Orders o ON od.OrderID = o.OrderID
        JOIN
    Customers c ON c.CustomerID = o.CustomerID
GROUP BY CustomerID;

