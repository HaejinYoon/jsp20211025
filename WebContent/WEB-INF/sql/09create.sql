USE test;
-- CHAR 타입
CREATE TABLE mytable1 (
	col1 CHAR(1),
    col2 CHAR(2),
    col3 CHAR(3),
    col4 CHAR(4)
);

INSERT INTO mytable1 (col1, col2, col3, col4) 
VALUES ('a', 'ab', 'abc', 'abcd');

SELECT * FROM mytable1;

INSERT INTO mytable1 (col1)
Values ('ab'); -- 안됨

INSERT INTO mytable1 (col4)
VALUES ('ab');

-- VARCHAR 타입
CREATE TABLE mytable2 (
	c1 VARCHAR(1),
    c2 VARCHAR(2),
    c3 VARCHAR(3),
    c4 VARCHAR(4)
);

INSERT INTO mytable2 (c1, c2, c3, c4) VALUES ('a', 'ab', 'abc', 'abcd');

CREATE TABLE mytable3 (
	c1 VARCHAR(5) , 
    c2 CHAR(4),
    c3 CHAR(10),
    c4 VARCHAR(40)
);
INSERT INTO mytable3 VALUES ('haeji', 'abcd', '안녕하세요', '안녕하세요 아싸뽀메');
SELECT * FROM mytable3;

CREATE TABLE mytable4 (
	c1 VARCHAR(50) , 
    c2 CHAR(100),
    c3 CHAR(255),
    c4 VARCHAR(200)
);
INSERT INTO mytable4 VALUES ('Haejin Yoon', 'abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcde', '안녕하세요', '안녕하세요 아싸뽀메, 공사을넴');
INSERT INTO mytable4 VALUES ('Haejin Yoon', 'abcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcdeabcde', '안녕하세요', '안녕하세요 아싸뽀메, 공사을넴');
SELECT * FROM mytable4;

SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';