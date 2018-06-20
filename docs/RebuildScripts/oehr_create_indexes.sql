Rem
Rem Copyright (c) 2001, 2007, Oracle Corporation.  All rights reserved.  
Rem


CREATE INDEX oehr_emp_department_ix
       ON oehr_employees (department_id);

CREATE INDEX oehr_emp_job_ix
       ON oehr_employees (job_id);

CREATE INDEX oehr_emp_manager_ix
       ON oehr_employees (manager_id);

CREATE INDEX oehr_emp_name_ix
       ON oehr_employees (last_name, first_name);

CREATE INDEX oehr_dept_location_ix
       ON oehr_departments (location_id);

CREATE INDEX oehr_jhist_job_ix
       ON oehr_job_history (job_id);

CREATE INDEX oehr_jhist_employee_ix
       ON oehr_job_history (employee_id);

CREATE INDEX oehr_jhist_department_ix
       ON oehr_job_history (department_id);

CREATE INDEX oehr_loc_city_ix
       ON oehr_locations (city);

CREATE INDEX oehr_loc_state_province_ix	
       ON oehr_locations (state_province);

CREATE INDEX oehr_loc_country_ix
       ON oehr_locations (country_id);

CREATE UNIQUE INDEX oehr_order_items_uk
ON oehr_order_items (order_id, product_id) ;

--
-- Enhancement request 2376117 suggested to have a PRIMARY KEY constraint
-- supported by a non-unique index
-- Starting with 10i R1, this is implemented in table INVENTORIES:
--

CREATE INDEX oehr_inventory_ix
 ON oehr_inventories (warehouse_id,product_id);

ALTER TABLE oehr_inventories ENABLE CONSTRAINT oehr_inventory_pk; 


CREATE INDEX oehr_whs_location_ix
ON oehr_warehouses (location_id);

CREATE INDEX oehr_inv_product_ix
ON oehr_inventories (product_id);

CREATE INDEX oehr_item_order_ix
ON oehr_order_items (order_id);

CREATE INDEX oehr_item_product_ix
ON oehr_order_items (product_id);

CREATE INDEX oehr_ord_sales_rep_ix
ON oehr_orders (sales_rep_id);

CREATE INDEX oehr_ord_customer_ix
ON oehr_orders (customer_id);

CREATE INDEX oehr_ord_order_date_ix
ON oehr_orders (order_date);

CREATE INDEX oehr_cust_account_manager_ix
ON oehr_customers (account_mgr_id);

CREATE INDEX oehr_cust_lname_ix
ON oehr_customers (cust_last_name);

CREATE INDEX oehr_cust_email_ix
ON oehr_customers (cust_email);

CREATE INDEX oehr_prod_name_ix
ON oehr_product_descriptions (translated_name);

CREATE INDEX oehr_prod_supplier_ix
ON oehr_product_information (supplier_id);

CREATE INDEX oehr_cust_upper_name_ix
ON oehr_customers (UPPER(cust_last_name), UPPER(cust_first_name));


COMMIT;

