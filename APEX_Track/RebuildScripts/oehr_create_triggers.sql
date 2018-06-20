Rem
Rem Copyright (c) 2001, 2007, Oracle Corporation.  All rights reserved.  
Rem


ALTER TABLE oehr_job_history DISABLE CONSTRAINT oehr_jhist_date_interval; 

create or replace TRIGGER oehr_update_job_history
  AFTER UPDATE OF job_id, department_id ON oehr_employees
  FOR EACH ROW
DECLARE
  l_sdate date;
BEGIN

if (:old.job_id != :new.job_id or 
    :old.department_id != :new.department_id) 
then

  for c1 in 
    (select max(end_date) prev_start_date 
       from oehr_job_history
      where employee_id = :old.employee_id) 
  loop
     l_sdate := c1.prev_start_date+((24/60)/60);
  end loop;

  oehr_add_job_history(:old.employee_id, 
                  nvl(l_sdate,:old.hire_date), 
                  sysdate, 
                  :old.job_id, 
                  :old.department_id);
end if;
  
END;
/


CREATE OR REPLACE TRIGGER  oehr_oi_pk
BEFORE insert on oehr_ORDER_ITEMS
for each row
declare
new_line number;
begin
for c1 in (
  select oehr_ORDER_ITEMS_SEQ.nextval next_val
  from dual
) loop
  if :new.order_item_id is null then
    :new.ORDER_ITEM_ID :=  c1.next_val;
  end if;
  SELECT (NVL(MAX(line_item_id),0)+1) INTO new_line  
    FROM oehr_order_items 
    WHERE order_id = :new.order_id;  
  :new.line_item_id := new_line;  
end loop;
end;
/

CREATE OR REPLACE TRIGGER oehr_orders_pk
BEFORE insert on oehr_ORDERS
for each row
begin
for c1 in (select oehr_orders_seq.nextval  nextval from dual) 
loop
 if :new.order_id is null then 
   :new.order_id := c1.nextval;
 end if;
end loop;
end;
/

CREATE OR REPLACE TRIGGER  oehr_cust_pk
BEFORE insert on oehr_CUSTOMERS
for each row
DECLARE cust_id number;
begin
for c1 in (SELECT oehr_CUSTOMERS_SEQ.nextval cust_id  FROM dual) loop
  if :new.customer_id is null then 
   :new.CUSTOMER_ID := c1.cust_id;
  end if;
end loop;
end;
/

create or replace TRIGGER  oehr_products_pk
BEFORE insert on oehr_PRODUCT_INFORMATION
for each row
DECLARE prod_id number;
begin
for c1 in (SELECT oehr_PRODUCTS_SEQ.nextval prod_id  FROM dual) loop
  if :new.product_id is null then 
   :new.product_ID := c1.prod_id;
  end if;
 end loop;
end;
/

COMMIT;

