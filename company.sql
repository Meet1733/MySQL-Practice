CREATE DATABASE IF NOT EXISTS company_meet;
USE company_meet;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO employee(id, name, salary) VALUES(1,"adam",25000),(2,"bob",30000),(3,"casey",40000);

SELECT * FROM employee;

CREATE TABLE emp(
	id INT,
    salary INT DEFAULT 25000
);

DROP TABLE emp;

INSERT INTO emp(id) VALUES(2);
SELECT * FROM emp;