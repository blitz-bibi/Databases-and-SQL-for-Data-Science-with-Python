-- problem 
-- For each department retrieve the number of employees in the department,
-- and the average employee salary in the department..

SELECT * FROM EMPLOYEES;

SELECT avg(salary), DEP_ID, COUNT(*) as total
FROM EMPLOYEES
GROUP BY DEP_ID;


