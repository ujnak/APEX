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
PROMPT specify connect string as parameter 3:
DEFINE connect_string     = &3
PROMPT

connect hr/&hr_passwd@&connect_string
  
-- Remove policy from the table. 
begin
  sys.xs_data_security.remove_object_policy(policy=>'employees_ds', 
                                        schema=>'hr', object=>'employees');
end;
/
-- Delete security class and ACLs
exec sys.xs_security_class.delete_security_class('hr_privileges', xs_admin_util.cascade_option);
exec sys.xs_acl.delete_acl('emp_acl', xs_admin_util.cascade_option);
exec sys.xs_acl.delete_acl('it_acl', xs_admin_util.cascade_option);
exec sys.xs_acl.delete_acl('hr_acl', xs_admin_util.cascade_option);

-- Delete data security policy
exec sys.xs_data_security.delete_policy('employees_ds', xs_admin_util.cascade_option);

connect admin/&passwd
-- Delete application users and roles
exec sys.xs_principal.delete_principal('employee', xs_admin_util.cascade_option);
exec sys.xs_principal.delete_principal('hr_representative', xs_admin_util.cascade_option);
exec sys.xs_principal.delete_principal('it_engineer', xs_admin_util.cascade_option);
exec sys.xs_principal.delete_principal('smavris', xs_admin_util.cascade_option);
exec sys.xs_principal.delete_principal('daustin', xs_admin_util.cascade_option);
 
 
-- Delete database role
drop role db_emp;

-- Delete session administrator
drop user hr_session;
-- Delete the common user used to connect to DB
drop user hr_common;
 
-- Delete dispatcher user used by mid-tier
exec sys.xs_principal.delete_principal('dispatcher', xs_admin_util.cascade_option);
 
exit

