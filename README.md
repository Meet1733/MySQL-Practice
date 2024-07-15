# SQL Queries for Worker Database

This repository contains a series of SQL queries for various operations on a Worker database. Each question is provided with a toggle option to view the corresponding answer.

## Instructions
Click on the "Show/Hide Answer" link below each question to toggle the visibility of the answer.

---

### Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
<details>
<summary>Show/Hide Answer</summary>
  
```sql
SELECT FIRST_NAME AS WORKER_NAME FROM Worker;
```
</details>


### Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
 <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT UPPER(FIRST_NAME) FROM Worker;
```
</details>
 
 ### Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
 <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT DISTINCT(DEPARTMENT) FROM Worker; 
SELECT DEPARTMENT FROM Worker GROUP BY DEPARTMENT;
```
</details>
 
 ### Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT SUBSTRING(FIRST_NAME , 1 , 3) FROM WORKER;
```
</details>

### Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.
 <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT INSTR(FIRST_NAME , 'b') FROM WORKER WHERE FIRST_NAME = 'Amitabh';
```
</details>
 
 ### Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
 <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT RTRIM(FIRST_NAME) FROM Worker;
```
</details>
 
 ### Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
  <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT LTRIM(FIRST_NAME) FROM Worker;
```
</details>
  
  ### Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
  <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT DISTINCT DEPARTMENT, LENGTH(DEPARTMENT) FROM WORKER;
SELECT DEPARTMENT , LENGTH(DEPARTMENT) FROM WORKER GROUP BY DEPARTMENT;
```
</details>
  
  ### Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
  <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT REPLACE(FIRST_NAME , 'a' , 'A') FROM WORKER;
```
</details>
  
  ### Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
  ### A space char should separate them.
  <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT CONCAT(FIRST_NAME , ' ' , LAST_NAME) AS COMPLETE_NAME FROM WORKER;
```
</details>
  
  ### Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
  <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER ORDER BY FIRST_NAME;
```
</details>
  
  ### Q-12. Write an SQL query to print all Worker details from the Worker table order by
  ### FIRST_NAME Ascending and DEPARTMENT Descending.
  <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER ORDER BY FIRST_NAME , DEPARTMENT DESC;
```
</details>
  
  ### Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
  <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER WHERE FIRST_NAME = "Vipul" OR FIRST_NAME = "Satish";
SELECT * FROM WORKER WHERE FIRST_NAME IN ('Vipul' , 'Satish');
```
</details>
  
  ### Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
  <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER WHERE FIRST_NAME != "Vipul" AND FIRST_NAME != "Satish";
SELECT * FROM WORKER WHERE FIRST_NAME NOT IN ('Vipul' , 'Satish');
```
</details>
  
  ### Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
  <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER WHERE DEPARTMENT LIKE 'Admin%';
```
</details>
  
  ### Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
  <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER WHERE FIRST_NAME LIKE '%a%';
```
</details>
  
  ### Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
   <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER WHERE FIRST_NAME LIKE '%a';
```
</details>
   
   ### Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
   <details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER WHERE FIRST_NAME LIKE '%h' AND LENGTH(FIRST_NAME) = 6;
SELECT * FROM WORKER WHERE FIRST_NAME LIKE '_____h';
```
</details>
     
     
### Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER WHERE SALARY BETWEEN 100000 AND 500000;
```
</details>

### Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER WHERE YEAR(JOINING_DATE) = 2014 AND MONTH(JOINING_DATE) = 02;
```
</details>

### Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT DEPARTMENT , COUNT(*) FROM WORKER WHERE DEPARTMENT = 'Admin';
```
</details>

### Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT CONCAT(FIRST_NAME , ' ' , LAST_NAME) AS COMPLETE_NAME FROM WORKER WHERE SALARY >= 50000 AND SALARY <= 100000;
SELECT CONCAT(FIRST_NAME , ' ' , LAST_NAME) AS COMPLETE_NAME FROM WORKER WHERE SALARY BETWEEN 50000 AND 100000;
```
</details>

### Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT DEPARTMENT , COUNT(*) AS NO_OF_WORKER FROM WORKER GROUP BY DEPARTMENT ORDER BY NO_OF_WORKER DESC;
```
</details>

### Q-24. Write an SQL query to print details of the Workers who are also Managers.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT w.* FROM WORKER AS w INNER JOIN TITLE AS t ON w.WORKER_ID = t.WORKER_REF_ID WHERE t.WORKER_TITLE = "Manager";
```
</details>

### Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT WORKER_TITLE, COUNT(*) AS count FROM Title GROUP BY WORKER_TITLE HAVING count > 1;
```
</details>

### Q-26. Write an SQL query to show only odd rows from a table.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER WHERE WORKER_ID%2 != 0;
SELECT * FROM WORKER WHERE MOD (WORKER_ID, 2) != 0;
SELECT * FROM WORKER WHERE MOD (WORKER_ID, 2) <> 0;
```
</details>

### Q-27. Write an SQL query to show only even rows from a table.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER WHERE WORKER_ID%2 = 0;
SELECT * FROM WORKER WHERE MOD (WORKER_ID, 2) = 0;
```
</details>

### Q-28. Write an SQL query to clone a new table from another table.
<details>
<summary>Show/Hide Answer</summary>

```sql 
CREATE TABLE WORKER_CLONE LIKE WORKER;
INSERT INTO WORKER_CLONE <details>
SELECT * FROM WORKER;
SELECT * FROM WORKER_CLONE;
```
</details>

### Q-29. Write an SQL query to fetch intersecting records of two tables.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT WORKER.* FROM WORKER INNER JOIN WORKER_CLONE USING(WORKER_ID);
```
</details>

### Q-30. Write an SQL query to show records from one table that another table does not have.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT w.* FROM WORKER AS w LEFT JOIN WORKER_CLONE AS wc ON w.WORKER_ID = wc.WORKER_ID WHERE wc.WORKER_ID IS NULL;
SELECT WORKER.* FROM WORKER LEFT JOIN WORKER_CLONE USING (WORKER_ID) WHERE WORKER_CLONE.WORKER_ID IS NULL;
```
</details>

### Q-31. Write an SQL query to show the current date and time.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();
```
</details>

### Q-32. Write an SQL query to show the top n (say 5) records of a table order by descending salary.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER ORDER BY SALARY DESC LIMIT 5;
```
</details>

### Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER ORDER BY SALARY DESC LIMIT 4,1;
SELECT * FROM (SELECT * FROM WORKER ORDER BY SALARY DESC LIMIT 5) AS TEMP ORDER BY SALARY ASC LIMIT 1;
```
</details>

### Q-34. Write an SQL query to determine the 5th highest salary without using LIMIT keyword.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT SALARY FROM WORKER AS w1
WHERE 4 = (
SELECT COUNT(DISTINCT w2.SALARY)
FROM WORKER AS w2 
WHERE w2.SALARY >=w1.SALARY
);
```
</details>

### Q-35. Write an SQL query to fetch the list of employees with the same salary.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT w1.* FROM WORKER AS w1 , WORKER AS w2  WHERE w1.WORKER_ID != w2.WORKER_ID AND w1.SALARY = w2.SALARY;
```
</details>  

### Q-36. Write an SQL query to show the second highest salary from a table using sub-query.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT MAX(SALARY) FROM WORKER WHERE SALARY NOT IN (SELECT MAX(SALARY) FROM WORKER);
```
</details>

### Q-37. Write an SQL query to show one row twice in results from a table.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER
UNION ALL
SELECT * FROM WORKER ORDER BY WORKER_ID;
```
</details>


### Q-38. Write an SQL query to list worker_id who does not get bonus.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT WORKER_ID FROM WORKER WHERE WORKER_ID NOT IN (<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT WORKER_REF_ID FROM BONUS);
```
</details>

### Q-39. Write an SQL query to fetch the first 50% records from a table.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER WHERE WORKER_ID <= (<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT COUNT(WORKER_ID)/2 FROM WORKER);
```
</details>

### Q-40. Write an SQL query to fetch the departments that have less than 4 people in it.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT DEPARTMENT, COUNT(DEPARTMENT) AS DEPCOUNT FROM WORKER GROUP BY DEPARTMENT HAVING DEPCOUNT < 4;
```
</details>

### Q-41. Write an SQL query to show all departments along with the number of people in there.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT DEPARTMENT, COUNT(DEPARTMENT) AS DEPCOUNT FROM WORKER GROUP BY DEPARTMENT;
```
</details>

### Q-42. Write an SQL query to show the last record from a table.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER ORDER BY WORKER_ID DESC LIMIT 1;
SELECT * FROM WORKER WHERE WORKER_ID = (SELECT MAX(WORKER_ID) FROM WORKER);
```
</details>

### Q-43. Write an SQL query to fetch the first row of a table.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER ORDER BY WORKER_ID LIMIT 1;
SELECT * FROM WORKER WHERE WORKER_ID = (SELECT MIN(WORKER_ID) FROM WORKER);
```
</details>

### Q-44. Write an SQL query to fetch the last five records from a table.
<details>
<summary>Show/Hide Answer</summary>

```sql 
SELECT * FROM WORKER ORDER BY WORKER_ID DESC LIMIT 5) ORDER BY WORKER_ID;
```
</details>
