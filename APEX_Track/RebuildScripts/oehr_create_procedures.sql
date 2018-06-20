Rem
Rem Copyright (c) 2001, 2007, Oracle Corporation.  All rights reserved.  
Rem


REM ===========================================================================
REM procedure to add a row to the JOB_HISTORY table and row trigger 
REM to call the procedure when data is updated in the job_id or 
REM department_id columns in the EMPLOYEES table.
REM ===========================================================================

CREATE OR REPLACE PROCEDURE oehr_add_job_history
  (  p_emp_id          oehr_job_history.employee_id%type
   , p_start_date      oehr_job_history.start_date%type
   , p_end_date        oehr_job_history.end_date%type
   , p_job_id          oehr_job_history.job_id%type
   , p_department_id   oehr_job_history.department_id%type 
   )
IS
BEGIN
  INSERT INTO oehr_job_history (employee_id, start_date, end_date, 
                           job_id, department_id)
    VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id);
END oehr_add_job_history;
/
