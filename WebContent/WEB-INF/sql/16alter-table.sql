use test;

CREATE TABLE mytable20 (
	col1 INT,
    col2 INT
);
DESC mytable20;

ALTER TABLE mytable20 MODIFY COLUMN col1 INT NOT NULL;
ALTER TABLE mytable20 MODIFY COLUMN col1 INT NULL;

-- 제약사항 추가 전 제약사항을 위반하는 레코드가 있을 시 제약사항 추가하는 쿼리는 실행 안됨.
INSERT INTO mytable20 (col2) VALUES (3);
SELECT * FROM mytable20;

-- default 추가
ALTER TABLE mytable20 MODIFY column col1 INT DEFAULT 0;
ALTER TABLE mytable20 ALTER col1 DROP DEFAULT;

desc mytable20;

-- check 제약사항 추가
ALTER TABLE mytable20 ADD CHECK (col1 >10);
-- 제약사항 확인
SHOW CREATE TABLE mytable20;

-- 'mytable20', 'CREATE TABLE `mytable20` (\n  `col1` int(11),\n  `col2` int(11) DEFAULT NULL,\n  CONSTRAINT `CONSTRAINT_1` CHECK (`col1` > 10)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci'
-- check 제약사항 삭제
ALTER TABLE mytable20 DROP CONSTRAINT constraint_1;

-- unique 제약 사항 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT UNIQUE;
-- unique 제약 사항 삭제
ALTER TABLE mytable20 DROP INDEX col1 ;
DESC mytable20;

-- index 없는 경우
SELECT * FROM mytable20 WHERE col1 = 10; -- 모든레코드 탐색
-- index 있는 경우
SELECT * FROM mytable20 WHERE col1 = 10; -- col1 인덱스를 먼저 탐색(효율적탐색)
TRUNCATE mytable20;
-- primary key 추가
ALTER TABLE mytable20 MODIFY COLUMN col1 INT PRIMARY KEY;
-- primary key 삭제
ALTER TABLE mytable20 DROP PRIMARY KEY;