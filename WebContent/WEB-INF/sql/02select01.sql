-- A 테이블의 내용을 읽을 때
-- SELECT 와 FROM 조합으로 작성ALTER
-- SELECT :  조회할 columns 명시
-- from : Table 명 작성
SELECT * FROM Customers;
SELECT * FROM Employees;

-- 조회할 열 선택
SELECT LastName, FirstName from Employees;
-- customers 테이블의 CustomerName, Country 컬럼만 조회
SELECT CustomerName, Country from Customers;

-- 테이블 컬럼 조회 (and 제약사항)
DESCRIBE Customers;
DESC Customers;

DESC Employees;

-- categories 테이블의 컬럼을 조회
DESC Categories;