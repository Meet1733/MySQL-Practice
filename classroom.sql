CREATE DATABASE IF NOT EXISTS college;
USE college;
 
 CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks VARCHAR(50),
    grade VARCHAR(1),
    city VARCHAR(20)
 );
 
  CREATE TABLE dept (
	id INT PRIMARY KEY,
    name VARCHAR(50)
 );
 
 INSERT INTO dept VALUES(101, "English"),(102, "Maths");
 SELECT * FROM dept;
 
 UPDATE dept SET id=103 WHERE id=102;
 
  CREATE TABLE teacher (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
 );
 
 INSERT INTO teacher VALUES(101, "Teach1", 101),(102, "Teach2", 102);
 SELECT * FROM teacher;
 
 INSERT INTO student
 (rollno, name, marks, grade, city)
 VALUES
 (101, "Meet", 94, "A", "Rajkot"),
 (102, "Raj", 87, "B", "Mumbai"),
 (103, "Jay", 76, "C", "Delhi"),
 (104, "Yash", 46, "D", "Delhi"),
 (105, "Adi", 88, "B", "Jaipur"),
 (106, "Aki", 70, "C", "Kota");
 
SELECT * FROM student WHERE marks+10 > 100;
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city NOT IN ("Delhi", "Mumbai");
SELECT * FROM student LIMIT 3;
SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(rollno) FROM student;

SELECT city, count(rollno) FROM student GROUP BY city;

SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks);

SELECT grade, COUNT(rollno) FROM student GROUP BY grade ORDER BY grade;

SELECT count(name), city FROM student GROUP BY city HAVING  MAX(marks) > 85;

-- General Order of Writing Clauses
-- SELECT
-- FROM 
-- WHERE (Puts condition on rows)
-- GROUP BY
-- HAVING (Puts condition on groups)
-- ORDER BY

SELECT city 
FROM student 
WHERE grade = "B" 
GROUP BY city 
HAVING MAX(marks) > 85
ORDER BY city ASC;

SET SQL_SAFE_UPDATES = 0;
UPDATE student SET marks = "12" WHERE rollno = 104;
UPDATE student SET grade = "B" WHERE marks BETWEEN 80 AND 90;
UPDATE student SET marks = marks - 1;
SELECT * FROM student;

DELETE FROM student WHERE marks < 33;

ALTER TABLE student ADD COLUMN age INT NOT NULL DEFAULT 19;
ALTER TABLE student DROP COLUMN age;
ALTER TABLE student MODIFY COLUMN age VARCHAR(2);
ALTER TABLE student CHANGE COLUMN age stu_age INT;
ALTER TABLE student DROP COLUMN stu_age;
ALTER TABLE student RENAME TO stu;
ALTER TABLE stu RENAME TO student;

ALTER TABLE student CHANGE COLUMN name full_name VARCHAR(50);
DELETE FROM student WHERE marks < 80;
ALTER TABLE student DROP COLUMN grade;
