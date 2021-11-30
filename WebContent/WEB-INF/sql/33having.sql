USE test;

SELECT Country, count(CustomerID) people FROM Customers
-- WHERE count(CustomerID) > 10
GROUP BY Country
HAVING count(CustomerID) >= 10; -- people 가능

-- 연습1 : 주문을 한번만 한 사람들 조회 (CustomerName)
SELECT c.CustomerName, count(OrderID) '주문 횟수' FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
HAVING count(OrderID) = 1;

-- 연습2 : 주문을 한번만 또는 한번도 안한 사람들 조회
SELECT * from Orders;
SELECT c.CustomerName, count(OrderID) '주문 횟수' FROM Orders o RIGHT JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID
HAVING count(OrderID) = 1 OR count(OrderID) = 0
;

-- 연습 3 : 주문을 한번 또는 0번 받은 직원
SELECT e.LastName, e.FirstName, count(OrderID) '주문 횟수' FROM Orders o RIGHT JOIN Employees e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
HAVING count(OrderID) <=1
;

SELECT Country, City, count(CustomerID) FROM
Customers
GROUP BY Country, City
;