Rem
Rem Copyright (c) 2001, 2007, Oracle Corporation.  All rights reserved.  
Rem


REM ===========================================================================
REM Create the EMP_DETAILS_VIEW that joins the employees, jobs, 
REM departments, jobs, countries, and locations table to provide details
REM about employees.
REM ===========================================================================

CREATE OR REPLACE VIEW oehr_emp_details_view
  (employee_id,
   job_id,
   manager_id,
   department_id,
   location_id,
   country_id,
   first_name,
   last_name,
   salary,
   commission_pct,
   department_name,
   job_title,
   city,
   state_province,
   country_name,
   region_name)
AS SELECT
  e.employee_id, 
  e.job_id, 
  e.manager_id, 
  e.department_id,
  d.location_id,
  l.country_id,
  e.first_name,
  e.last_name,
  e.salary,
  e.commission_pct,
  d.department_name,
  j.job_title,
  l.city,
  l.state_province,
  c.country_name,
  r.region_name
FROM
  oehr_employees e,
  oehr_departments d,
  oehr_jobs j,
  oehr_locations l,
  oehr_countries c,
  oehr_regions r
WHERE e.department_id = d.department_id
  AND d.location_id = l.location_id
  AND l.country_id = c.country_id
  AND c.region_id = r.region_id
  AND j.job_id = e.job_id 
WITH READ ONLY;


CREATE OR REPLACE VIEW oehr_products
AS
SELECT i.product_id
,      d.language_id
,      CASE WHEN d.language_id IS NOT NULL
            THEN d.translated_name
            ELSE TRANSLATE(i.product_name USING NCHAR_CS)
       END    AS product_name
,      i.category_id
,      CASE WHEN d.language_id IS NOT NULL
            THEN d.translated_description
            ELSE TRANSLATE(i.product_description USING NCHAR_CS)
       END    AS product_description
,      i.weight_class
,      i.warranty_period
,      i.supplier_id
,      i.product_status
,      i.list_price
,      i.min_price
,      i.catalog_url
FROM   oehr_product_information  i
,      oehr_product_descriptions d
WHERE  d.product_id  (+) = i.product_id
AND    d.language_id (+) = sys_context('USERENV','LANG');


REM =======================================================
REM Create some inventory views
REM =======================================================

CREATE OR REPLACE VIEW oehr_sydney_inventory
AS
SELECT p.product_id
,      p.product_name
,      i.quantity_on_hand
FROM   oehr_inventories i
,      oehr_warehouses  w
,      oehr_products    p  
WHERE  p.product_id = i.product_id
AND    i.warehouse_id = w.warehouse_id
AND    w.warehouse_name = 'Sydney';


CREATE OR REPLACE VIEW oehr_bombay_inventory
AS
SELECT p.product_id
,      p.product_name
,      i.quantity_on_hand
FROM   oehr_inventories i
,      oehr_warehouses  w
,      oehr_products    p   
WHERE  p.product_id = i.product_id
AND    i.warehouse_id = w.warehouse_id
AND    w.warehouse_name = 'Bombay';


CREATE OR REPLACE VIEW oehr_toronto_inventory
AS
SELECT p.product_id
,      p.product_name
,      i.quantity_on_hand
FROM   oehr_inventories i
,      oehr_warehouses  w
,      oehr_products    p
WHERE  p.product_id = i.product_id
AND    i.warehouse_id = w.warehouse_id
AND    w.warehouse_name = 'Toronto';


REM =======================================================
REM Create product_prices view of product_information
REM columns to show view with a GROUP BY clause.
REM =======================================================

CREATE OR REPLACE VIEW oehr_product_prices
AS
SELECT category_id
,      COUNT(*)        as "#_OF_PRODUCTS"
,      MIN(list_price) as low_price
,      MAX(list_price) as high_price
FROM   oehr_product_information
GROUP BY category_id;


CREATE OR REPLACE VIEW oehr_account_managers AS
SELECT		c.account_mgr_id 		ACCT_MGR,
		cr.region_id 			REGION, 
		c.country_id 	                COUNTRY, 
		c.state_province 	        PROVINCE, 
		count(*) 			NUM_CUSTOMERS
FROM		oehr_customers c, oehr_countries cr
WHERE		c.country_id = cr.country_id
GROUP BY ROLLUP (c.account_mgr_id, 
		 cr.region_id, 
		 c.country_id, 
		 c.state_province);


CREATE OR REPLACE VIEW oehr_customers_view
AS SELECT 
  c.customer_id,
  c.cust_first_name,
  c.cust_last_name,
  c.street_address,
  c.postal_code,
  c.city,
  c.state_province,
  co.country_id,
  co.country_name,
  co.region_id,
  c.nls_language,
  c.nls_territory,
  c.credit_limit,
  c.cust_email,
  c.phone_number,
  c.account_mgr_id
FROM 
  oehr_countries co, 
  oehr_customers c
WHERE 
  c.country_id = co.country_id(+) 
;

CREATE OR REPLACE VIEW oehr_orders_view
As 
select order_id,
  to_date(to_char(order_date,'DD-MON-YY HH:MI:SS'),'DD-MON-YY HH:MI:SS')    order_date,
order_mode,
customer_id,
order_status,
order_total,
sales_rep_id,
promotion_id
from oehr_orders;

