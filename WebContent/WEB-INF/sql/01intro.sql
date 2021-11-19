-- Structured Query Language (SQL)

-- 한 줄 주석

-- 하나의 명령문은 세미콜론 끝남
-- 하나의 명령문을 실행하는 방법
-- 커서를 명령문 안 (또는 끝에) 두고 ctrl
USE test;

select now();

-- sql 대소문자 구분을 안함 (단, 벤더나 버전에 따라 다를 수 있음)
SELECT now();

-- sql 작성 관습: 키워드는 대문자로 작성

SELECT * from Suppliers;
