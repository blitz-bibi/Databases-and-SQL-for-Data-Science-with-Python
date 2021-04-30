-- problem 5
-- In SQL problem 4 (Exercise 3 Problem 4),
-- limit the result to departments with fewer than 4 employees.

SELECT * FROM EMPLOYEES;

SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING COUNT(DEP_ID) < 4
ORDER BY "AVG_SALARY";


