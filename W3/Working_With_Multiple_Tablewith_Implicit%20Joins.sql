-- Working with Multiple Tables
-- Exercise 2: Accessing Multiple Tables with Implicit Joins
-- problem 1 
-- Perform an implicit cartesian/cross join between EMPLOYEES and JOBS tables.le.

SELECT * FROM EMPLOYEES, jobs;

-- problem 2 
-- Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.


select * from employees e, jobs f
where e.job_id = f.job_ident;

-- problem 3
-- Redo the previous query, using shorter aliases for table names.

select * from employees E, jobs J where E.JOB_ID = J.JOB_IDENT;

-- problem 4
-- Redo the previous query, but retrieve only the Employee ID, Employee Name and Job Title.
select EMP_ID,F_NAME,L_NAME, JOB_TITLE from employees E, jobs J 
where E.JOB_ID = J.JOB_IDENT;

-- problem 5
-- Redo the previous query, but specify the fully qualified column names 
-- with aliases in the SELECT clause.

select E.EMP_ID,E.F_NAME,E.L_NAME, J.JOB_TITLE from employees E, jobs J 
where E.JOB_ID = J.JOB_IDENT;