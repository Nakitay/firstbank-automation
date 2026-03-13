---- your manager is asking all jobs and their average salary.
select distinct JOB_ID
from EMPLOYEES;

-- get me average salary for IT_PROG
select AVG(SALARY)
from EMPLOYEES
where JOB_ID = 'IT_PROG';

--get me average salary  "AC_ACCOUNT"
select AVG(SALARY)
from EMPLOYEES
where JOB_ID = 'AC_ACCOUNT';

select JOB_ID, AVG(SALARY), count(*), sum(SALARY), min(SALARY), max(salary)
from EMPLOYEES
group by JOB_ID;

--Display how many department we have each locations,
--display how many countries we have in each regions

select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID;

select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID
order by count(*) DESC;

select LOCATION_ID, count(*)
from DEPARTMENTS
group by LOCATION_ID
order by 2 DESC;
--display how many countries we have in each regions
select REGION_ID, COUNT(*)
from COUNTRIES
group by REGION_ID;

select *
from REGIONS;
select *
from COUNTRIES;
---get me total salary for each department from employees table
SELECT DEPARTMENT_ID, sum(SALARY), count(*)
from EMPLOYEES
group by DEPARTMENT_ID;

--not null
SELECT DEPARTMENT_ID, sum(SALARY), count(*)
from EMPLOYEES
where DEPARTMENT_ID is not NULL -- to remove null ID
group by DEPARTMENT_ID

--display job id where avg salary more than 5 k
;
select JOB_ID, avg(SALARY)
from EMPLOYEES
where SALARY > 5000
group by JOB_ID;

-- display duplicate(more than one) firstname from employees table
select FIRST_NAME, count(*)
from EMPLOYEES
group by FIRST_NAME
having count(*) > 1;

--display department id where employees count is bigger than 5
select DEPARTMENT_ID, count(*)
from EMPLOYEES
group by DEPARTMENT_ID
Having count(*) > 5
order by 2 DESC;






