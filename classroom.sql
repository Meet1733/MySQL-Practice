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

ALTER TABLE student CHANGE COLUMN full_name name VARCHAR(50);
DELETE FROM student WHERE marks < 80;
ALTER TABLE student DROP COLUMN grade;
ALTER TABLE student ADD COLUMN grade VARCHAR(1);
TRUNCATE TABLE student;

-- JOINS
-- 1) INNER JOIN
SELECT * FROM student;

CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course (id,course) 
VALUES
(102, "english"),
(105, "maths"),
(103, "science"),
(107, "geo");
SELECT * FROM course;

SELECT * 
FROM student as s
INNER JOIN course as c
ON s.rollno = c.id;

-- 2) LEFT JOIN
SELECT * 
FROM student AS s
LEFT JOIN course AS c
ON s.rollno = c.id;

-- 3) RIGHT JOIN
SELECT * 
FROM student AS s
RIGHT JOIN course AS c
ON s.rollno = c.id;

-- 4) FULL JOIN (LEFT JOIN UNION RIGHT JOIN)
SELECT * 
FROM student AS s
LEFT JOIN course AS c
ON s.rollno = c.id
UNION
SELECT * 
FROM student AS s
RIGHT JOIN course AS c
ON s.rollno = c.id;

-- 5) LEFT EXCLUSIVE JOIN
SELECT * 
FROM student AS s
LEFT JOIN course AS c
ON s.rollno = c.id
WHERE c.id IS NULL;

-- 5) RIGHT EXCLUSIVE JOIN
SELECT * 
FROM student AS s
RIGHT JOIN course AS c
ON s.rollno = c.id
WHERE s.rollno IS NULL;

-- 6) FULL EXCLUSIVE JOIN (Only left and right part together no common part)
SELECT * 
FROM student as a
LEFT JOIN course as c
ON a.rollno = c.id
WHERE c.id IS NULL
UNION
SELECT * 
FROM student as a
RIGHT JOIN course as c
ON a.rollno = c.id
WHERE a.rollno IS NULL;

-- 7) SELF JOIN (TABLE JOIN WITH ITSELF)
CREATE TABLE emp(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO emp(id,name,manager_id) 
VALUES
(101, "meet", 103),
(102, "raj", 104),
(103, "jay", null),
(104, "dev", 103);

SELECT * FROM emp;

SELECT a.name as manager_name, b.name 
FROM emp AS a
JOIN emp AS b
ON a.id = b.manager_id;

-- UNION combines SELECT result and give unique values
SELECT name FROM emp
UNION 
SELECT name FROM emp;
-- UNION ALL gives all values  

-- DATA
-- (101, "Meet", 94, "A", "Rajkot"),
--  (102, "Raj", 87, "B", "Mumbai"),
--  (103, "Jay", 76, "C", "Delhi"),
--  (104, "Yash", 46, "D", "Delhi"),
--  (105, "Adi", 88, "B", "Jaipur"),
--  (106, "Aki", 70, "C", "Kota");

-- SELECT AVG(marks) FROM student;
SELECT name,marks FROM student WHERE marks > (SELECT AVG(marks) FROM student);
SELECT name, rollno FROM student WHERE rollno%2 = 0;
SELECT name, rollno FROM student WHERE rollno IN (SELECT rollno FROM student WHERE rollno%2 = 0);
SELECT MAX(marks) FROM (SELECT marks FROM student WHERE city = "Delhi") AS temp;

CREATE VIEW view1 AS 
SELECT rollno, name FROM student;

 