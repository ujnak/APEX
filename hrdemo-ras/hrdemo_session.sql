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

PROMPT specify password for hr_session (HR) as parameter 1:
define hr_passwd=&1
PROMPT
PROMPT specify connect string as parameter 2:
DEFINE connect_string     = &2
PROMPT

----------------------------------------------------------------------
--  HR Demo - PL/SQL with Session API
----------------------------------------------------------------------
-- This demo shows RAS runtime, using RAS user as application user.
-- The user does not logon to database, but a RAS session is created
-- and attached for each user before accessing employee table.
---------------------------------------------------------------------
 
-- Connect as RAS session administrator.
connect hr_session/&hr_passwd@&connect_string
 
-- Variable used to remember the session ID.
var gsessionid varchar2(32);
 
-- Create an application session for SMARVIS and attach to it.
declare
  sessionid raw(16);
begin
  sys.dbms_xs_sessions.create_session('SMAVRIS', sessionid);
  :gsessionid := rawtohex(sessionid);
  sys.dbms_xs_sessions.attach_session(sessionid, null);
end ;
/
  
-- Display the current user, it should be SMAVRIS now.
select xs_sys_context('xs$session','username') from dual;
 
-- Display the enabled application roles and database roles.
select role_name from v$xs_session_roles union
select role from session_roles order by 1;
  
-- SMAVRIS can view all the records including SALARY column.
select email, first_name, last_name, department_id, manager_id, salary 
from employees where department_id = 60 or department_id = 40
order by department_id, email;
 
-- EMPLOYEES table has 107 rows, we expect to see all of them.
select count(*) from employees;
  
-- Disable hr_representative role.
exec dbms_xs_sessions.disable_role('hr_representative');
 
-- SMAVRIS should only be able to see her own record.
select email, first_name, last_name, department_id, manager_id, salary 
from employees where department_id = 60 or department_id = 40
order by department_id, email;
  
-- Enable hr_representative role.
exec sys.dbms_xs_sessions.enable_role('hr_representative');
 
-- SMAVRIS can view all the records again.
select email, first_name, last_name, department_id, manager_id, salary 
from employees where department_id = 60 or department_id = 40
order by department_id, email;
 
-- EMPLOYEES table has 107 rows, we expect to see all of them.
select count(*) from employees;
  
-- Detach and destroy the application session.
declare
  sessionid raw(16);
begin
  sessionid := hextoraw(:gsessionid);
  sys.dbms_xs_sessions.detach_session;
  sys.dbms_xs_sessions.destroy_session(sessionid);
end;
/
 
exit
