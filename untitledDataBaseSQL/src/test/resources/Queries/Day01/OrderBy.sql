select  * from EMPLOYEES
/*
 It allows us to sort database provided in column
 AS a default it will order the result ASCENDING ORDER( A-Z , 0-9 or  DEScending Z-A, 9-0)
 */

 order by SALARY;

---descending

select  * from EMPLOYEES
order by SALARY DESC ;

--display all the employees based on their first name
select * from EMPLOYEES
order by FIRST_NAME DESC;

select  * from EMPLOYEES
where EMPLOYEE_ID <120
order by SALARY DESC ;

select  * from EMPLOYEES
order by FIRST_NAME ASC , LAST_NAME DESC;