UPDATE OEHR_ORDERS
SET order_date = order_date + trunc(SYSDATE - to_date('20000802', 'YYYYMMDD'));

UPDATE OEHR_EMPLOYEES 
SET hire_date = hire_date + trunc(SYSDATE - to_date('20000802', 'YYYYMMDD'));

UPDATE OEHR_JOB_HISTORY 
SET start_date = start_date + trunc(SYSDATE - to_date('20000802', 'YYYYMMDD'))
,   end_date = end_date + trunc(SYSDATE - to_date('20000802', 'YYYYMMDD'));
