Rem
Rem Copyright (c) 2001, 2007, Oracle Corporation.  All rights reserved.  
Rem

COMMENT ON TABLE oehr_regions 
IS 'Regions table that contains region numbers and names. Contains 4 rows; references with the oehr_Countries table.';

COMMENT ON COLUMN oehr_regions.region_id
IS 'Primary key of oehr_regions table.';

COMMENT ON COLUMN oehr_regions.region_name
IS 'Names of regions. Locations are in the countries of these regions.';

COMMENT ON TABLE oehr_locations
IS 'Locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. Does not store addresses /
locations of customers. Contains 23 rows; references with the
oehr_departments and oehr_countries tables. ';

COMMENT ON COLUMN oehr_locations.location_id
IS 'Primary key of oehr_locations table';

COMMENT ON COLUMN oehr_locations.street_address
IS 'Street address of an office, warehouse, or production site of a company.
Contains building number and street name';

COMMENT ON COLUMN oehr_locations.postal_code
IS 'Postal code of the location of an office, warehouse, or production site 
of a company. ';

COMMENT ON COLUMN oehr_locations.city
IS 'A not null column that shows city where an office, warehouse, or 
production site of a company is located. ';

COMMENT ON COLUMN oehr_locations.state_province
IS 'State or Province where an office, warehouse, or production site of a 
company is located.';

COMMENT ON COLUMN oehr_locations.country_id
IS 'Country where an office, warehouse, or production site of a company is
located. Foreign key to country_id column of the oehr_countries table.';


COMMENT ON TABLE oehr_departments
IS 'Departments table that shows details of departments where employees 
work. Contains 27 rows; references with oehr_locations, oehr_employees, and oehr_job_history tables.';

COMMENT ON COLUMN oehr_departments.department_id
IS 'Primary key column of oehr_departments table.';

COMMENT ON COLUMN oehr_departments.department_name
IS 'A not null column that shows name of a department. Administration, 
Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public 
Relations, Sales, Finance, and Accounting. ';

COMMENT ON COLUMN oehr_departments.manager_id
IS 'Manager_id of a department. Foreign key to employee_id column of oehr_employees table. The manager_id column of the oehr_employee table references this column.';

COMMENT ON COLUMN oehr_departments.location_id
IS 'Location id where a department is located. Foreign key to location_id column of oehr_locations table.';



COMMENT ON TABLE oehr_job_history
IS 'Table that stores job history of the employees. If an employee 
changes departments within the job or changes jobs within the department, 
new rows get inserted into this table with old job information of the 
employee. Contains a complex primary key: employee_id+start_date.
Contains 25 rows. References with oehr_jobs, oehr_employees, and oehr_departments tables.';

COMMENT ON COLUMN oehr_job_history.employee_id
IS 'A not null column in the complex primary key employee_id+start_date.
Foreign key to employee_id column of the oehr_employee table';

COMMENT ON COLUMN oehr_job_history.start_date
IS 'A not null column in the complex primary key employee_id+start_date. 
Must be less than the end_date of the oehr_job_history table. (enforced by 
constraint oehr_jhist_date_interval)';

COMMENT ON COLUMN oehr_job_history.end_date
IS 'Last day of the employee in this job role. A not null column. Must be 
greater than the start_date of the oehr_job_history table. 
(enforced by constraint oehr_jhist_date_interval)';

COMMENT ON COLUMN oehr_job_history.job_id
IS 'Job role in which the employee worked in the past; foreign key to 
job_id column in the oehr_jobs table. A not null column.';

COMMENT ON COLUMN oehr_job_history.department_id
IS 'Department id in which the employee worked in the past; foreign key to deparment_id column in the oehr_departments table';




COMMENT ON TABLE oehr_countries
IS 'oehr_country table. Contains 25 rows. References with oehr_locations table.';

COMMENT ON COLUMN oehr_countries.country_id
IS 'Primary key of oehr_countries table.';

COMMENT ON COLUMN oehr_countries.country_name
IS 'oehr_Country name';

COMMENT ON COLUMN oehr_countries.region_id
IS 'Region ID for the country. Foreign key to region_id column in the oehr_departments table.';



COMMENT ON TABLE oehr_jobs
IS 'jobs table with job titles and salary ranges. Contains 19 rows.
References with oehr_employees and oehr_job_history table.';

COMMENT ON COLUMN oehr_jobs.job_id
IS 'Primary key of jobs oehr_table.';

COMMENT ON COLUMN oehr_jobs.job_title
IS 'A not null column that shows job title, e.g. AD_VP, FI_ACCOUNTANT';

COMMENT ON COLUMN oehr_jobs.min_salary
IS 'Minimum salary for a job title.';

COMMENT ON COLUMN oehr_jobs.max_salary
IS 'Maximum salary for a job title';



COMMENT ON TABLE oehr_employees
IS 'oehr_employees table. Contains 107 rows. References with oehr_departments, 
oehr_jobs, oehr_job_history tables. Contains a self reference.';

COMMENT ON COLUMN oehr_employees.employee_id
IS 'Primary key of oehr_employees table.';

COMMENT ON COLUMN oehr_employees.first_name
IS 'First name of the employee. A not null column.';

COMMENT ON COLUMN oehr_employees.last_name
IS 'Last name of the employee. A not null column.';

COMMENT ON COLUMN oehr_employees.email
IS 'Email id of the employee';

COMMENT ON COLUMN oehr_employees.phone_number
IS 'Phone number of the employee; includes country code and area code';

COMMENT ON COLUMN oehr_employees.hire_date
IS 'Date when the employee started on this job. A not null column.';

COMMENT ON COLUMN oehr_employees.job_id
IS 'Current job of the employee; foreign key to job_id column of the 
oehr_jobs table. A not null column.';

COMMENT ON COLUMN oehr_employees.salary
IS 'Monthly salary of the employee. Must be greater 
than zero (enforced by constraint oehr_emp_salary_min)';

COMMENT ON COLUMN oehr_employees.commission_pct
IS 'Commission percentage of the employee; Only employees in sales 
department elgible for commission percentage';

COMMENT ON COLUMN oehr_employees.manager_id
IS 'Manager id of the employee; has same domain as manager_id in 
oehr_departments table. Foreign key to employee_id column of oehr_employees table.
(useful for reflexive joins and CONNECT BY query)';

COMMENT ON COLUMN oehr_employees.department_id
IS 'Department id where employee works; foreign key to department_id 
column of the oehr_departments table';


COMMENT ON TABLE oehr_customers IS
'Contains customers data either entered by an employee or by the customer him/herself over the Web.';

COMMENT ON COLUMN oehr_customers.street_address IS
'Modified column to maintain customer street address.';

COMMENT ON COLUMN oehr_customers.postal_code IS
'Modified column to maintain customer postal code.';

COMMENT ON COLUMN oehr_customers.city IS
'Modified column to maintain customer city.';

COMMENT ON COLUMN oehr_customers.state_province IS
'Modified column to maintain customer state or province.';

COMMENT ON COLUMN oehr_customers.country_id IS
'Modified column to maintain customer country id.';

COMMENT ON COLUMN oehr_customers.phone_number IS
'Modified column to maintain customer phone number.';

COMMENT ON COLUMN oehr_customers.cust_first_name IS
'NOT NULL constraint.';

COMMENT ON COLUMN oehr_customers.cust_last_name IS
'NOT NULL constraint.';

COMMENT ON COLUMN oehr_customers.credit_limit IS
'Check constraint.';

COMMENT ON COLUMN oehr_customers.customer_id IS
'Primary key column.';

COMMENT ON COLUMN oehr_customers.account_mgr_id IS
'References oehr_employees.employee_id.';


COMMENT ON TABLE oehr_warehouses IS
'Warehouse data unspecific to any industry.';

COMMENT ON COLUMN oehr_warehouses.warehouse_id IS
'Primary key column.';

COMMENT ON COLUMN oehr_warehouses.location_id IS
'Primary key column, references oehr_locations.location_id.';


COMMENT ON TABLE oehr_order_items IS
'Example of many-to-many resolution.';

COMMENT ON COLUMN oehr_order_items.order_id IS
'Part of concatenated primary key, references orders.order_id.';

COMMENT ON COLUMN oehr_order_items.product_id IS
'References oehr_product_information.product_id.';

COMMENT ON COLUMN oehr_order_items.line_item_id IS
'Part of concatenated primary key.';

COMMENT ON COLUMN oehr_orders.order_status IS
'0: Not fully entered, 1: Entered, 2: Canceled - bad credit, -
3: Canceled - by customer, 4: Shipped - whole order, -
5: Shipped - replacement items, 6: Shipped - backlog on items, -
7: Shipped - special delivery, 8: Shipped - billed, 9: Shipped - payment plan,-
10: Shipped - paid';


COMMENT ON TABLE oehr_orders IS
'Contains orders entered by a salesperson as well as over the Web.';

COMMENT ON COLUMN oehr_orders.order_date IS
'TIMESTAMP WITH LOCAL TIME ZONE column, NOT NULL constraint.';

COMMENT ON COLUMN oehr_orders.order_id IS
'PRIMARY KEY column.';

COMMENT ON COLUMN oehr_orders.sales_rep_id IS
'References oehr_employees.employee_id.';

COMMENT ON COLUMN oehr_orders.promotion_id IS
'Sales promotion ID. Used in SH schema';

COMMENT ON COLUMN oehr_orders.order_mode IS
'CHECK constraint.';

COMMENT ON COLUMN oehr_orders.order_total IS
'CHECK constraint.';

COMMENT ON TABLE oehr_inventories IS
'Tracks availability of products by product_it and warehouse_id.';

COMMENT ON COLUMN oehr_inventories.product_id IS
'Part of concatenated primary key, references oehr_product_information.product_id.';

COMMENT ON COLUMN oehr_inventories.warehouse_id IS
'Part of concatenated primary key, references oehr_warehouses.warehouse_id.';

COMMENT ON TABLE oehr_product_information IS
'Non-industry-specific data in various categories.';

COMMENT ON COLUMN oehr_product_information.product_id IS
'Primary key column.';

COMMENT ON COLUMN oehr_product_information.product_description IS
'Primary language description corresponding to translated_description in
oehr_product_descriptions, added to provide non-NLS text columns for OC views to access.';

COMMENT ON COLUMN oehr_product_information.category_id IS
'Low cardinality column, can be used for bitmap index. 
Schema SH uses it as foreign key';

COMMENT ON COLUMN oehr_product_information.weight_class IS
'Low cardinality column, can be used for bitmap index.';

COMMENT ON COLUMN oehr_product_information.warranty_period IS
'INTERVAL YEAER TO MONTH column, low cardinality, can be used for bitmap 
index.';

COMMENT ON COLUMN oehr_product_information.supplier_id IS
'Offers possibility of extensions outside Common Schema.';

COMMENT ON COLUMN oehr_product_information.product_status IS
'Check constraint. Appropriate for complex rules, such as "All products in 
status PRODUCTION must have at least one inventory entry." Also appropriate 
for a trigger auditing status change.';

COMMENT ON TABLE oehr_product_descriptions IS
'Non-industry-specific design, allows selection of NLS-setting-specific data derived at runtime, for example using the products view.';

COMMENT ON COLUMN oehr_product_descriptions.product_id IS
'Primary key column.';

COMMENT ON COLUMN oehr_product_descriptions.language_id IS
'Primary key column.';

COMMENT ON TABLE oehr_products IS
'This view joins oehr_product_information and oehr_product_descriptions, using NLS
settings to pick the appropriate language-specific product description.';

COMMENT ON TABLE oehr_bombay_inventory IS
'This view shows inventories at the Bombay warehouse.';

COMMENT ON TABLE oehr_sydney_inventory IS
'This view shows inventories at the Sydney warehouse.';

COMMENT ON TABLE oehr_toronto_inventory IS
'This view shows inventories at the Toronto warehouse.';
COMMIT;