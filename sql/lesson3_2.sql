CREATE TABLE student(
   student_id SERIAL,
   name VARCHAR(20),
   major VARCHAR(20),
   PRIMARY KEY (student_id)
);

SELECT *
FROM student;

/*新增資料*/
INSERT INTO student(name,major)
VALUES('小白','歷史');

INSERT INTO student(major,name)
VALUES('生物','小黑');

INSERT INTO student(major,name)
VALUES(NULL,'小蘭');

/*新增多筆*/

INSERT INTO student(name,major)
VALUES('小a','歷史'),('小b','國文');

/*傳回新增的資訊*/
INSERT INTO student(name,major)
VALUES('小a','生物'),('小b','歷史')
RETURNING *;

