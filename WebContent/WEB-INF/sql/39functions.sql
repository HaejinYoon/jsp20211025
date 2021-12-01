USE test;

-- concat : 스트링 연결 함수
SELECT concat('abc', 'def') AS newStr;

SELECT EmployeeID, concat(LastName,' ', FirstName) Name, BirthDate, Notes FROM Employees;

-- SUBSTR : 부분 문자열 
SELECT substr('hello world', 1, 4); -- 원본문자열, 시작위치(1부터 시작), 길이
SELECT substr('hello world', 7, 5)
;
-- IFNULL : null을 다른 값으로
SELECT CustomerName, ifnull(ContactName, 'None') ContactName FROM Customers
ORDER BY CustomerID DESC;
-- coalesce : 첫번째로 null아닌 값
SELECT coalesce(null, null, 'hello', null, 'world');

SELECT CustomerName, coalesce(ContactName, 'none') From Customers Order by CustomerID DESC;

-- now
SELECT now();

SELECT CustomerID, CustomerName, concat(ifnull(Address, 'none'),', ', ifnull(City, 'none'),', ', ifnull(PostalCode, 'none'), ', ', ifnull(Country, 'none')) AS FullAddress FROM Customers;
INSERT INTO Customers ( CustomerName, ContactName, City) VALUES ('harry', 'harry', 'Sacramento');
UPDATE Customers SET CustomerName = 'Harry' WHERE CustomerID=108;