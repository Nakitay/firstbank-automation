/*
 Aggreagte function - Multi Rows - group function
 --count---> it will count rows
 --max --> it will give max value
 --min --> min value
 --sum --> total
-- avg --> average value

 Aggregate functions tales multi row and return one result
 All of them ignore null value
 */

select  * from DEPARTMENTS;
select  count(*) from DEPARTMENTS;   -- returned one result

-- How many locations we have
select * from LOCATIONS;
select  count(*) from LOCATIONS;

select count(DEPARTMENT_ID)
from EMPLOYEES;
----Task---- How many different first name we have ?

select  count(distinct  FIRST_NAME)
from EMPLOYEES;

---how many employees working as IT or sales
select  count(*)
from EMPLOYEES
where JOB_ID in ('IT_PROG' , 'SSA_REP');

select max(SALARY)
from EMPLOYEES;

--min
select min(SALARY)
from EMPLOYEES;


--avg
select AVG (SALARY)
from EMPLOYEES;

select round  (AVG (SALARY),1 )
from EMPLOYEES;

--sum
select sum(SALARY)
from EMPLOYEES;