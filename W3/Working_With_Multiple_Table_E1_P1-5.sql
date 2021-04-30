-- Working with Multiple Tables
-- Exercise 1: Accessing Multiple Tables with Sub-Queries
-- problem 1 
-- Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.

SELECT * FROM EMPLOYEES 
	WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS);
	
-- PROBLEM 2 
-- Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.
		
select * from employees 
where JOB_ID IN (select JOB_IDENT from jobs where JOB_TITLE= 'Jr. Designer');		

-- problem 3 
-- Retrieve JOB information and list of employees who earn more than $70,000.

select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from jobs
where JOB_IDENT IN (select JOB_ID from employees where SALARY > 70000 );

-- problem 4
-- Retrieve JOB information and list of employees whose birth year is after 1976.
select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from jobs
 where JOB_IDENT IN (select JOB_ID from employees where YEAR(B_DATE)>1976 );
 
 -- problem 5
 -- Retrieve JOB information and list of female employees whose birth year is after 1976.
 select JOB_TITLE, MIN_SALARY,MAX_SALARY,JOB_IDENT from jobs 
 where JOB_IDENT IN (select JOB_ID from employees where YEAR(B_DATE)>1976 and SEX='F' );
 