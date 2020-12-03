SET ECHO OFF
SET FEEDBACK 1
SET NUMWIDTH 10
SET LINESIZE 80
SET TRIMSPOOL ON
SET TAB OFF
SET PAGESIZE 100
SET ECHO ON

PROMPT specify password for ADMIN as parameter 1:
define passwd=&1
PROMPT
PROMPT specify password for HR as parameter 2:
define hr_passwd=&2
PROMPT
PROMPT specify password for daustin, smavirus and dispatcher as parameter 3:
define xs_passwd=&3
PROMPT
PROMPT specify connect string as parameter 4:
DEFINE connect_string     = &4
PROMPT

----------------------------------------------------------------------
--  Introduction
----------------------------------------------------------------------
-- The HR Demo shows how to use basic Real Application Security features.
-- The demo secures HR.EMPLOYEES table by creating a data security 
-- policy that grants the table access to:
-- Data Security Policy
--
--(1) An employee can view his/her own record including SALARY column.
--(2) An IT engineer can view all employee records in IT department, 
--    but cannot view employee's salaries.
--(3) An HR representative can view and update all employee records.
--
--
--Sample Users and Their Role Grants:
-- 1) DAUSTIN, an application user in IT department. He has role employee
--    and it_engineer. He can view employee records in IT department, but he
--    cannot view the salary column except for his own. 
-- 2) SMAVRIS, an application user in HR department. She has role employee
--    and hr_representative. She can view and update all the employee records.
 
----------------------------------------------------------------------
-- 1. SETUP - User and Roles
----------------------------------------------------------------------

connect admin/&passwd@&connect_string
-- Create an application role employee for common employees.
exec sys.xs_principal.create_role(name => 'employee', enabled => true);
 
-- Create an application role it_engineer for IT department.
exec sys.xs_principal.create_role(name => 'it_engineer', enabled => true);

-- Create an application role hr_representative for HR department.
exec sys.xs_principal.create_role(name => 'hr_representative', enabled => true);

-- create a database role for object privilege grants
create role db_emp;

-- Grant DB_EMP to the three application roles, so they have the required 
-- object privileges to access the table. 
grant db_emp to employee;
grant db_emp to it_engineer;
grant db_emp to hr_representative; 
  
-- Create two application users:
-- DAUSTIN (in IT department), granted employee and it_engineer.
exec  sys.xs_principal.create_user(name => 'daustin', schema => 'hr');
exec  sys.xs_principal.set_password('daustin', '&xs_passwd');
exec  sys.xs_principal.grant_roles('daustin', 'XSCONNECT');
exec  sys.xs_principal.grant_roles('daustin', 'employee');
exec  sys.xs_principal.grant_roles('daustin', 'it_engineer');
 
-- SMAVRIS (in HR department), granted employee and hr_representative.
exec  sys.xs_principal.create_user(name => 'smavris', schema => 'hr');
exec  sys.xs_principal.set_password('smavris', '&xs_passwd');
exec  sys.xs_principal.grant_roles('smavris', 'XSCONNECT');
exec  sys.xs_principal.grant_roles('smavris', 'employee');
exec  sys.xs_principal.grant_roles('smavris', 'hr_representative');

-- Grant HR user policy adminisration privilege
exec sys.xs_admin_cloud_util.grant_system_privilege('ADMIN_ANY_SEC_POLICY','HR'); 
 
----------------------------------------------------------------------
-- 2. SETUP - Security class and ACL
----------------------------------------------------------------------

-- Connect as HR
connect hr/&hr_passwd@&connect_string

-- Grant necessary object privileges to db_emp role
-- This role will be used to grant the required object privileges to
-- application users.

grant select, insert, update, delete on hr.employees to db_emp; 

-- Create a security class hr_privileges and include privileges from the predefined DML security class.
-- hr_privileges has a new privilege VIEW_SALARY, which is used to control the 
-- access to SALARY column.
declare
begin
  sys.xs_security_class.create_security_class(
    name        => 'hr_privileges', 
    parent_list => xs$name_list('sys.dml'),
    priv_list   => xs$privilege_list(xs$privilege('view_salary')));
end;
/
 
-- Create three ACLs to grant privileges for the policy defined later.
declare  
  aces xs$ace_list := xs$ace_list();  
begin 
  aces.extend(1);
 
  -- EMP_ACL: This ACL grants employee the privileges to view an employee's
  --          own record including SALARY column.
  aces(1) := xs$ace_type(privilege_list => xs$name_list('select','view_salary'),
                         principal_name => 'employee');
 
  sys.xs_acl.create_acl(name      => 'emp_acl',
                    ace_list  => aces,
                    sec_class => 'hr_privileges');
  
  -- IT_ACL:  This ACL grants it_engineer the privilege to view the employee
  --          records in IT department, but it does not grant the VIEW_SALARY
  --          privilege that is required for access to SALARY column.
  aces(1) := xs$ace_type(privilege_list => xs$name_list('select'),
                         principal_name => 'it_engineer');
 
  sys.xs_acl.create_acl(name      => 'it_acl',
                    ace_list  => aces,
                    sec_class => 'hr_privileges');
 
  -- HR_ACL:  This ACL grants hr_representative the privileges to view and update all
  --          employees' records including SALARY column.
  aces(1):= xs$ace_type(privilege_list => xs$name_list('select', 'insert',
                                        'update', 'delete', 'view_salary'),
                        principal_name => 'hr_representative');
 
  sys.xs_acl.create_acl(name      => 'hr_acl',
                    ace_list  => aces,
                    sec_class => 'hr_privileges');
end;
/
 
----------------------------------------------------------------------
-- 3. SETUP - Data security policy
----------------------------------------------------------------------
-- Create data security policy for EMPLOYEE table. The policy defines three
-- realm constraints and a column constraint that protects SALARY column.
declare
  realms   xs$realm_constraint_list := xs$realm_constraint_list();      
  cols     xs$column_constraint_list := xs$column_constraint_list();
begin  
  realms.extend(3);
 
  -- Realm #1: Only the employee's own record. 
  --           employee can view the realm including SALARY column.     
  realms(1) := xs$realm_constraint_type(
    realm    => 'email = xs_sys_context(''xs$session'',''username'')',
    acl_list => xs$name_list('emp_acl'));
 
  -- Realm #2: The records in the IT department.
  --           it_engineer can view the realm excluding SALARY column.
  realms(2) := xs$realm_constraint_type(
    realm    => 'department_id = 60',
    acl_list => xs$name_list('it_acl'));
 
  -- Realm #3: All the records.
  --           hr_representative can view and update the realm including SALARY column.
  realms(3) := xs$realm_constraint_type(
    realm    => '1 = 1',
    acl_list => xs$name_list('hr_acl'));
 
  -- Column constraint protects SALARY column by requiring VIEW_SALARY 
  -- privilege.
  cols.extend(1);
  cols(1) := xs$column_constraint_type(
    column_list => xs$list('salary'),
    privilege   => 'view_salary');
 
  sys.xs_data_security.create_policy(
    name                   => 'employees_ds',
    realm_constraint_list  => realms,
    column_constraint_list => cols);
end;
/
  
-- Apply the data security policy to the table.
begin
  sys.xs_data_security.apply_object_policy(
    policy => 'employees_ds', 
    schema => 'hr',
    object =>'employees');
end;
/
  
----------------------------------------------------------------------
-- 4. SETUP - Validate the objects we have set up.
----------------------------------------------------------------------
set serveroutput on;
begin
  if (sys.xs_diag.validate_workspace()) then
    dbms_output.put_line('All configurations are correct.');
  else
    dbms_output.put_line('Some configurations are incorrect.');
  end if;
end;
/
-- XS$VALIDATION_TABLE contains validation errors if any.
-- Expect no rows selected.
select * from xs$validation_table order by 1, 2, 3, 4;
  
----------------------------------------------------------------------
-- 5. SETUP - Mid-Tier related configuration.
----------------------------------------------------------------------

connect admin/&passwd@&connect_string

-- create a session administrator who has only 
-- RAS session administration privilege (no data privilege), 
-- and is responsible to manage RAS session for each application user. 
grant xs_session_admin, create session to hr_session identified by &hr_passwd;
grant create session to hr_common identified by &hr_passwd;

-- craete a dispatcher user for java demo, to set up session for application user
exec sys.xs_principal.create_user(name=>'dispatcher', schema=>'HR');
exec sys.xs_principal.set_password('dispatcher', '&xs_passwd');
exec sys.xs_principal.grant_roles('dispatcher', 'XSCONNECT');
exec sys.xs_principal.grant_roles('dispatcher', 'xsdispatcher');
  
exit
