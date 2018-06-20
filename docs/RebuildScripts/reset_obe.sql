set serveroutput on 
set define '^'

spool reset.log
PROMPT <<--------------- Dropping OBE Schema --------------->>
drop user obe cascade;

alter session set current_schema = apex_180100;

PROMPT <<--------------- Setting Instance Settings --------------->>
begin
  wwv_flow_security.g_security_group_id := 10;
  wwv_flow_security.g_user := 'ADMIN';
  wwv_flow.g_import_in_progress := true;

  for c1 in (select user_id
             from wwv_flow_fnd_user
             where security_group_id = wwv_flow_security.g_security_group_id
             and   user_name = wwv_flow_security.g_user
            ) loop
    wwv_flow_fnd_user_api.edit_fnd_user
      (  p_user_id       => c1.user_id
       , p_user_name     => wwv_flow_security.g_user
       , p_web_password  => 'oracle'
       , p_new_password  => 'oracle'
       , p_change_password_on_first_use => 'N'
      );
    end loop;

    wwv_flow.g_import_in_progress := false;

    if wwv_flow_platform.get_preference('WORKSPACE_WEBSHEET_OBJECTS') = 'Y' then
      wwv_flow_platform.set_preference( 'WORKSPACE_WEBSHEET_OBJECTS','N');
    end if;
    wwv_flow_platform.set_preference( p_preference_name => 'STRONG_SITE_ADMIN_PASSWORD',p_preference_value => 'N' );
end;
/
commit;

PROMPT <<--------------- Installing OBE Workspace --------------->>
declare
  l_name varchar2(3) := 'obe';  -- leave as lowercase, as this will be the password too
  l_security_group_id number;
begin
  dbms_output.put_line('Checking for OBE workspace');
  for c1 in (select null
             from apex_workspaces
             where workspace = upper(l_name)
            ) loop
    dbms_output.put_line('Removing:'||upper(l_name));
    --
    wwv_flow_cloud_db_services.remove_workspace
      (  p_workspace_name   => upper(l_name)
       , p_drop_users       => 'N'
       , p_drop_tablespaces => 'N' 
      );            
  end loop;
    
  dbms_output.put_line('Creating:'||upper(l_name));

  wwv_flow_cloud_db_services.create_workspace
    (  p_workspace_name     => upper(l_name)
     , p_schema_name        => upper(l_name)
     , p_max_size_mb        => 25
     , p_install_sample_app => 'Y' 
    );
        
  apex_instance_admin.enable_workspace( upper(l_name));
  commit;

	for c1 in (select provisioning_company_id
	    			 from wwv_flow_companies
			      where short_name = trim(upper(l_name))
			     ) loop
    l_security_group_id := c1.provisioning_company_id;
		exit;
	end loop;
                                
  dbms_output.put_line('Creating User:'||l_name);
  wwv_flow_admin_api.create_user
    (  p_security_group_id            => l_security_group_id
     , p_user_name                    => l_name
     , p_web_password                 => 'oracle'
     , p_change_password_on_first_use => 'N'
     , p_is_admin                     => 'Y' 
    );

  -- Associate HR Schema
  dbms_output.put_line('Associating HR schema to '||upper(l_name));
  apex_instance_admin.add_schema
    (  p_workspace  => upper(l_name)
     , p_schema     => 'HR'
    );

end;
/
commit;

PROMPT <<--------------- Granting privileges to OBE --------------->>
grant connect,resource,debug connect session to obe;

alter session set current_schema = obe;

PROMPT <<--------------- Installing OBE Schema objects --------------->>
PROMPT <<--------------- @@oehr_create_tables.sql --------------->>
@@oehr_create_tables.sql
PROMPT <<--------------- @@oehr_create_procedures.sql --------------->>
@@oehr_create_procedures.sql
PROMPT <<--------------- @@oehr_create_sequences.sql --------------->>
@@oehr_create_sequences.sql
PROMPT <<--------------- @@oehr_create_indexes.sql --------------->>
@@oehr_create_indexes.sql
PROMPT <<--------------- @@oehr_create_fks.sql --------------->>
@@oehr_create_fks.sql
PROMPT <<--------------- @@oehr_create_triggers.sql --------------->>
@@oehr_create_triggers.sql
PROMPT <<--------------- @@oehr_create_views.sql --------------->>
@@oehr_create_views.sql
PROMPT <<--------------- @@oehr_create_comments.sql --------------->>
@@oehr_create_comments.sql
PROMPT <<--------------- @@oehr_seed_hr.sql --------------->>
@@oehr_seed_hr.sql
PROMPT <<--------------- @@oehr_seed_customers.sql --------------->>
@@oehr_seed_customers.sql
PROMPT <<--------------- @@oehr_seed_products.sql --------------->>
@@oehr_seed_products.sql
PROMPT <<--------------- @@oehr_seed_orders.sql --------------->>
@@oehr_seed_orders.sql
PROMPT <<--------------- @@oehr_update_dates.sql --------------->>
@@oehr_update_dates.sql

UPDATE OEHR_ORDERS
SET order_date = order_date + trunc(SYSDATE - to_date('20000802', 'YYYYMMDD'));

UPDATE OEHR_EMPLOYEES
SET hire_date = hire_date + trunc(SYSDATE - to_date('20000802', 'YYYYMMDD'));

UPDATE OEHR_JOB_HISTORY
SET start_date = start_date + trunc(SYSDATE - to_date('20000802', 'YYYYMMDD'))
,   end_date = end_date + trunc(SYSDATE - to_date('20000802', 'YYYYMMDD'));

PROMPT <<--------------- Forms Conversion DML --------------->>
@@forms_conversion_ddl.sql
PROMPT <<--------------- Forms Conversion DML --------------->>
@@forms_conversion_data_insert.sql
PROMPT <<--------------- EMP and DEPT DML --------------->>
@@emp_dept.sql

PROMPT <<--------------- Data Upload DML --------------->>
@@dependents.sql

PROMPT <<--------------- IRR DML --------------->>
update oehr_employees
   set job_id='AD_PRES'
 where employee_id=104
/

spool off

Exit
/
