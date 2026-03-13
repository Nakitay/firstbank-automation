-- the query below second column name is "round(avg(salary) which is not nice
select DEPARTMENT_ID, round (avg(SALARY)) as "Average_salary"
from EMPLOYEES
where DEPARTMENT_ID is not null -- to remove null department
group by DEPARTMENT_ID
having avg(SALARY)> 6000
order by  2 ASC;

select DEPARTMENT_ID, round (avg(SALARY)) as Average_salary
from EMPLOYEES
where DEPARTMENT_ID is not null -- to remove null department
group by DEPARTMENT_ID
having avg(SALARY)> 6000
order by  2 ASC;

-- manager is asking display annual salary for all employees as annual_salary

select  FIRST_NAME, SALARY*12 as annual_salary
from EMPLOYEES;

---------------------String Manipulation---------------------
-- I want to get fullName column where we have

--Java --> +' '+ firstNAme +  '  ' + lastname
--.SQL --> || first_name || ' ' || + lastName

select  FIRST_NAME || ' ' || LAST_NAME as full_name
from EMPLOYEES;

--add@ Cydeo.com to all the emails in the employee table

select  EMAIL || '@cydeo.com'from EMPLOYEES;
select concat(EMAIL,'@cydeo.com') from EMPLOYEES;
------lower case
select lower(EMAIL||'@cydeo.com') from EMPLOYEES;

--uppercase
select upper(EMAIL||'@cydeo.com') from EMPLOYEES;

--it makes first letter uppercase
select initcap(EMAIL||'@cydeo.com') from EMPLOYEES;

--length
select  EMAIL, length(email) as email_lenght
from EMPLOYEES;

--display all employees where firstName length equals 6
select  FIRST_NAME from EMPLOYEES
where length(FIRST_NAME) = 6 ;

--another solution
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '______';

--how many?
select count(*)from EMPLOYEES
where FIRST_NAME like '______';



--display initials from firstname and lastname ---> S.K ---- N.K

-- SUBSTR (columnName, beginningIndex, numberOfChar)
select  * from EMPLOYEES;
select substr(FIRST_NAME, 0,1)||'.'||substr(LAST_NAME,0,1)|| '.' as initials from employees;



--String ||String
--CONCAT -> String concatenation
--Lower -> Convert String to lower case
--Upper -> Convert String to upper case
--LENGTH -> number of characters in String
--SUBSTRING -> extract substring
--INITCAP -> Makes first letters upper case










