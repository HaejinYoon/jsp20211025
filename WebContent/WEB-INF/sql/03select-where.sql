SELECT * FROM Customers;

-- where: 조건에 해당하는 row, record만 필터

SELECT * from Customers where country='Brazil'; -- sql에서 문자열은 작은 따옴표 사용
-- customers 테이블에서 country가 France인 행만 조회

SELECT * FROM Customers WHERE Country='France';

-- where에서 사용할 수 있는 연산자들
SELECT * FROM Customers WHERE CustomerID >50;
SELECT * FROM Customers where CustomerID<5;

SELECT * FROM Customers WHERE CustomerID <> 1;
SELECT * FROM Customers WHERE CustomerID != 1;

-- Employees 테이블의 EmployeeID를 사용해서 위 연산자 연습
select * from Employees;

-- 비교연산자 주의
SELECT * FROM Customers WHERE CustomerID = 1;
SELECT * FROM Customers WHERE CustomerID = '1';

SELECT * FROM Customers WHERE CustomerID <= '3';

SELECT * FROM Customers WHERE CustomerID >= 'Mexico';
SELECT * FROM Employees WHERE EmployeeID > 5;