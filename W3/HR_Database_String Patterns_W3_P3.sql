-- problem 3 
-- Retrieve all employees in department 5 whose salary is between 60000 and 70000.

SELECT * FROM EMPLOYEES;

SELECT *
	FROM EMPLOYEES
	WHERE DEP_ID = 5 AND
	(SALARY BETWEEN 60000 AND 70000);


