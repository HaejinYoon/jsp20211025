USE test

-- transaction : 하나의 업무 단위
-- 예 : 돈을 송금
-- 	하나의 계좌에서 출금
-- 	또다른 계좌에 입금

CREATE TABLE mytable29Bank (
	id INT PRIMARY KEY AUTO_INCREMENT,
    money INT NOT NULL
);

