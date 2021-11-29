USE test;

-- join : 여러 테이블을 조합
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('cha', 'bum');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('park', 'ji');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('son', 'hm');
INSERT INTO mytable27Customer (firstName, lastName) VALUES ('lee', 'gi');

SELECT * FROM mytable27Customer;

INSERT INTO mytable28Tel (customerId, tel) VALUES (3, '0101111');
INSERT INTO mytable28Tel (customerId, tel) VALUES (4, '0102222');
INSERT INTO mytable28Tel (customerId, tel) VALUES (4, '0103333');

SELECT * FROM mytable28Tel;
-- join
SELECT * FROM mytable27Customer, mytable28Tel;
SELECT * FROM mytable27Customer JOIN mytable28Tel ON mytable27Customer.id = mytable28Tel.customerId; -- cartesign product (카테시안 곱) : 조인 조건 없을 시

SELECT * FROM mytable27Customer AS t27 JOIN mytable28Tel AS t28 ON t27.id = t28.customerId;

SELECT t27.id, t27.firstName, t28.id, t28.tel
FROM mytable27Customer t27 JOIN mytable28Tel t28
on t27.id = t28.customerId;


-- 예제 : 고객이 주문한 날짜 조회
-- 사용 테이블: Orders, Customers

SELECT * FROM Orders;
SELECT * FROM Employees;
SELECT * FROM Customers;

SELECT c.CustomerName name, o.OrderDate FROM Customers c JOIN Orders o ON c.CustomerID=o.CustomerID;

-- 예제 : 어떤 직원이 어느 날짜에 주문 받았는지 조회
-- 사용 테이블: Orders, Employees
SELECT e.EmployeeID, e.LastName, e.FirstName, o.OrderDate FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID;