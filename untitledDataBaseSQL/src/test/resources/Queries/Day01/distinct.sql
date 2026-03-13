/*
 it shows different values from query results based provided column
 */

 select distinct FIRST_NAME from EMPLOYEES;
-- it will check each row to filter different columns
select  distinct * from EMPLOYEES;


--since primary key can't be duplicate eit will gave same result
---so we have to add distinct for Foreign key
select JOB_ID from JOBS

