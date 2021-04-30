-- problem 1 
-- For each department ID retrieve the number of employees in the department.

SELECT * FROM EMPLOYEES;

SELECT DEP_ID, COUNT(*) as total
FROM EMPLOYEES
GROUP BY DEP_ID;


