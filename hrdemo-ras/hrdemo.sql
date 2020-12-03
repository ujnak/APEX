SET ECHO OFF
SET FEEDBACK 1
SET NUMWIDTH 10
SET LINESIZE 80
SET TRIMSPOOL ON
SET TAB OFF
SET PAGESIZE 100
COLUMN EMAIL FORMAT A10
COLUMN FIRST_NAME FORMAT A15
COLUMN LAST_NAME FORMAT A15
COLUMN DEPARTMENT_ID FORMAT 9999
COLUMN MANAGER_ID FORMAT 9999
COLUMN SALARY FORMAT 999999
SET ECHO ON

PROMPT specify password for daustin as parameter 1:
define daustin_passwd=&1
PROMPT
PROMPT specify password for smavris as parameter 2:
define smavris_passwd=&2
PROMPT
PROMPT specify connect string as parameter 3:
DEFINE connect_string     = &3
PROMPT

----------------------------------------------------------------------
--  HR Demo - PL/SQL with RAS direct logon user
----------------------------------------------------------------------
-- This demo shows RAS runtime, using RAS direct logon user. 
-- Each user directly connects to database and accesses employee table. 
-- RAS policy is automatically enforced.
---------------------------------------------------------------------
 
-- Connect as DAUSTIN, who has only employee and it_engineer role
conn daustin/&daustin_passwd@&connect_string
 
SET SECUREDCOL ON UNAUTH *******
 
-- DAUSTIN can view the records in IT department, but can only view his own
-- SALARY column.
select email, first_name, last_name, department_id, manager_id, salary 
from employees order by email;
 
 
SET SECUREDCOL OFF 
 
-- DAUSTIN cannot update the record.
update employees set manager_id = 102 where email = 'DAUSTIN';
 
-- Record is not changed.
select email, first_name, last_name, department_id, manager_id, salary
from employees where email = 'DAUSTIN';
 
 
-- Connect as SMAVRIS, who has both employee and hr_representative role. 
conn smavris/&smavris_passwd@&connect_string
 
-- SMAVRIS can view all the records including SALARY column.
select email, first_name, last_name, department_id, manager_id, salary 
from employees where department_id = 60 or department_id = 40
order by department_id, email;
 
-- EMPLOYEES table has 107 rows, we expect to see all of them.
select count(*) from employees;
  
-- SMAVRIS can update the record.
update employees set manager_id = 102 where email = 'DAUSTIN';
 
-- Record is changed.
select email, first_name, last_name, department_id, manager_id, salary
from employees where email = 'DAUSTIN';
 
-- change the record back to the original. 
update employees set manager_id = 103 where email = 'DAUSTIN';
 
exit
