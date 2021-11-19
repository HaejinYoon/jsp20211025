-- Distinct 
-- : 중복 제거

SELECT city FROM Customers;

SELECT DISTINCT city FROM Customers;

-- Customers 테이블에 Country 컬럼을 중복제거 해서 조회
SELECT DISTINCT Country FROM Customers;

-- 여러 컬럼 나열 가능
SELECT DISTINCT City, Country FROM Customers;