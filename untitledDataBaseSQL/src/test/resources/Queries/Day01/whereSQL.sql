select *
from EMPLOYEES;
--display all information of where first name is david
select *
from EMPLOYEES
where FIRST_NAME = 'David';

----'' ---> whatever is inside  is case-sensitive
select *
from EMPLOYEES
where FIRST_NAME = 'David '
  AND LAST_NAME = 'Lee';

--display firstname lastname and salary with name PETER
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where FIRST_NAME = 'Peter';

--display all information from employees where salary is higher than 6000
select *
from EMPLOYEES
where SALARY > 6000;

--display email who is making less than 5000
select EMAIL
from EMPLOYEES
where SALARY < 5000;

--display all information who is making more than 7000 and department id is 60
select *
from EMPLOYEES
where SALARY > 7000
  AND DEPARTMENT_ID = 60;


select *
from EMPLOYEES
where SALARY >= 3000
  and SALARY <= 7000; --or we can use BETWEEN

select * from EMPLOYEES
where JOB_ID = 'IT_PROG' OR JOB_ID = 'MK_MAN';

--display all info where employee ID is 121,154,165,187
--solution one
select * from EMPLOYEES
where EMPLOYEE_ID  = 121 OR EMPLOYEE_ID = 154 OR EMPLOYEE_ID = 187;

--solution 2
select * from EMPLOYEES
where EMPLOYEE_ID in (121,154,187);
 -----------------
select  * from COUNTRIES
where COUNTRY_ID in ('US','IT');

------or -----------------
select  * from COUNTRIES
where COUNTRY_ID NOT IN  ('US','IT');

--is NULL
SELECT  * from EMPLOYEES
where DEPARTMENT_ID  is NULL;

---NULL Logic
select  * from EMPLOYEES
where MANAGER_ID is NULL ;













