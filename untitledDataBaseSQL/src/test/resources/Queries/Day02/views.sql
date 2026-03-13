select * from EMPLOYEES;

select substr(FIRST_NAME, 0,1)||'.'||substr(LAST_NAME,0,1)|| '.' as initials,
       FIRST_NAME||' '||LAST_NAME as full_name
from employees;

create view EmployeeInfo as select substr(FIRST_NAME, 0,1)||'.'||substr(LAST_NAME,0,1)|| '.' as initials,
FIRST_NAME||' '||LAST_NAME as full_name
from employees;

select * from EMPLOYEEINFO;
select initials from EmployeeInfo;
drop view EmployeeInfo ;
