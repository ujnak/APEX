Rem
Rem Copyright (c) 2001, 2007, Oracle Corporation.  All rights reserved.  
Rem

REM ===========================================================================
REM Create the REGIONS table to hold region information for locations
REM HR.LOCATIONS table has a foreign key to this table.
REM ===========================================================================

CREATE TABLE oehr_regions
    ( region_id      NUMBER 
       CONSTRAINT  oehr_region_id_nn NOT NULL 
    , region_name    VARCHAR2(25) 
    , CONSTRAINT oehr_reg_id_pk PRIMARY KEY (region_id)
    );


REM ===========================================================================
REM Create the COUNTRIES table to hold country information for customers
REM and company locations. 
REM OE.CUSTOMERS table and HR.LOCATIONS have a foreign key to this table.
REM ===========================================================================

CREATE TABLE oehr_countries 
    ( country_id      CHAR(2) 
       CONSTRAINT  oehr_country_id_nn NOT NULL 
    , country_name    VARCHAR2(40) 
    , region_id       NUMBER 
    , CONSTRAINT     oehr_country_c_id_pk 
        	     PRIMARY KEY (country_id) 
    , CONSTRAINT oehr_countr_reg_fk
        	 FOREIGN KEY (region_id)
          	  REFERENCES oehr_regions(region_id)
    ) 
    ORGANIZATION INDEX; 


REM ===========================================================================
REM Create the LOCATIONS table to hold address information for company departments.
REM HR.DEPARTMENTS has a foreign key to this table.
REM ===========================================================================

CREATE TABLE oehr_locations
    ( location_id    NUMBER(4)
    , street_address VARCHAR2(40)
    , postal_code    VARCHAR2(12)
    , city       VARCHAR2(30)
	CONSTRAINT     oehr_loc_city_nn  NOT NULL
    , state_province VARCHAR2(25)
    , country_id     CHAR(2)
    , CONSTRAINT oehr_loc_id_pk
       		 PRIMARY KEY (location_id)
    , CONSTRAINT oehr_loc_c_id_fk
       		 FOREIGN KEY (country_id)
        	  REFERENCES oehr_countries(country_id));

REM ===========================================================================
REM Create the DEPARTMENTS table to hold company department information.
REM HR.EMPLOYEES and HR.JOB_HISTORY have a foreign key to this table.
REM ===========================================================================

CREATE TABLE oehr_departments
    ( department_id    NUMBER(4)
    , department_name  VARCHAR2(30)
	CONSTRAINT  oehr_dept_name_nn  NOT NULL
    , manager_id       NUMBER(6)
    , location_id      NUMBER(4)
    , CONSTRAINT oehr_dept_id_pk
       		 PRIMARY KEY (department_id)
    , CONSTRAINT oehr_dept_loc_fk
       		 FOREIGN KEY (location_id)
        	  REFERENCES oehr_locations (location_id));

REM ===========================================================================
REM Create the JOBS table to hold the different names of job roles within the company.
REM HR.EMPLOYEES has a foreign key to this table.
REM ===========================================================================

CREATE TABLE oehr_jobs
    ( job_id         VARCHAR2(10)
    , job_title      VARCHAR2(35)
	CONSTRAINT     oehr_job_title_nn  NOT NULL
    , min_salary     NUMBER(6)
    , max_salary     NUMBER(6)
    , CONSTRAINT oehr_job_id_pk
      		 PRIMARY KEY(job_id));

REM ===========================================================================
REM Create the EMPLOYEES table to hold the employee personnel 
REM information for the company.
REM HR.EMPLOYEES has a self referencing foreign key to this table.
REM ===========================================================================

CREATE TABLE oehr_employees
    ( employee_id    NUMBER(6)
    , first_name     VARCHAR2(20)
    , last_name      VARCHAR2(25)
	 CONSTRAINT     oehr_emp_last_name_nn  NOT NULL
    , email          VARCHAR2(25)
	CONSTRAINT     oehr_emp_email_nn  NOT NULL
    , phone_number   VARCHAR2(20)
    , hire_date      DATE
	CONSTRAINT     oehr_emp_hire_date_nn  NOT NULL
    , job_id         VARCHAR2(10)
	CONSTRAINT     oehr_emp_job_nn  NOT NULL
    , salary         NUMBER(8,2)
    , commission_pct NUMBER(2,2)
    , manager_id     NUMBER(6)
    , department_id  NUMBER(4)
    , CONSTRAINT     oehr_emp_salary_min
                     CHECK (salary > 0) 
    , CONSTRAINT     oehr_emp_email_uk
                     UNIQUE (email)
    , CONSTRAINT     oehr_emp_emp_id_pk
                     PRIMARY KEY (employee_id)
    , CONSTRAINT     oehr_emp_dept_fk
                     FOREIGN KEY (department_id)
                      REFERENCES oehr_departments
    , CONSTRAINT     oehr_emp_job_fk
                     FOREIGN KEY (job_id)
                      REFERENCES oehr_jobs (job_id)
    , CONSTRAINT     oehr_emp_manager_fk
                     FOREIGN KEY (manager_id)
                      REFERENCES oehr_employees);

REM ===========================================================================
REM Add a new foreign key constraint to Departments that references 
REM Employees table
REM ===========================================================================

ALTER TABLE oehr_departments
ADD ( CONSTRAINT oehr_dept_mgr_fk
      		 FOREIGN KEY (manager_id)
      		  REFERENCES oehr_employees (employee_id)
    ) ;


REM ===========================================================================
REM Create the JOB_HISTORY table to hold the history of jobs that 
REM employees have held in the past.
REM HR.JOBS, HR_DEPARTMENTS, and HR.EMPLOYEES have a foreign key to this table.
REM ===========================================================================

CREATE TABLE oehr_job_history
    ( employee_id   NUMBER(6)
	 CONSTRAINT    oehr_jhist_employee_nn  NOT NULL
    , start_date    DATE
	CONSTRAINT    oehr_jhist_start_date_nn  NOT NULL
    , end_date      DATE
	CONSTRAINT    oehr_jhist_end_date_nn  NOT NULL
    , job_id        VARCHAR2(10)
	CONSTRAINT    oehr_jhist_job_nn  NOT NULL
    , department_id NUMBER(4)
    , CONSTRAINT    oehr_jhist_date_interval
                    CHECK (end_date >= start_date)
    , CONSTRAINT     oehr_jhist_job_fk
                     FOREIGN KEY (job_id)
                     REFERENCES oehr_jobs
    , CONSTRAINT     oehr_jhist_emp_fk
                     FOREIGN KEY (employee_id)
                     REFERENCES oehr_employees
    , CONSTRAINT     oehr_jhist_dept_fk
                     FOREIGN KEY (department_id)
                     REFERENCES oehr_departments);

REM ===========================================================================
REM Create customers table.
REM ===========================================================================

CREATE TABLE oehr_customers
    ( customer_id        NUMBER(6)     
    , cust_first_name    VARCHAR2(20) CONSTRAINT cust_fname_nn NOT NULL
    , cust_last_name     VARCHAR2(20) CONSTRAINT cust_lname_nn NOT NULL
    , street_address     VARCHAR2(40)
    , postal_code        VARCHAR2(10)
    , city               VARCHAR2(30)
    , state_province     VARCHAR2(10)
    , country_id         CHAR(2)
    , phone_number       VARCHAR2(25)
    , nls_language       VARCHAR2(3)
    , nls_territory      VARCHAR2(30)
    , credit_limit       NUMBER(9,2)
    , cust_email         VARCHAR2(30)
    , account_mgr_id     NUMBER(6)
    , CONSTRAINT         oehr_cust_cl_max
                         CHECK (credit_limit <= 5000)
    , CONSTRAINT         oehr_customer_id_min
                         CHECK (customer_id > 0)
    , CONSTRAINT oehr_customers_pk
      PRIMARY KEY (customer_id));

REM ===========================================================================
REM Create warehouses table.
REM ===========================================================================

CREATE TABLE oehr_warehouses
    ( warehouse_id       NUMBER(3) 
    , warehouse_name     VARCHAR2(35)
    , location_id        NUMBER(4)
    , CONSTRAINT oehr_warehouses_pk PRIMARY KEY (warehouse_id)
    ) ;


REM ===========================================================================
REM Create table order_items.
REM ===========================================================================
	
CREATE TABLE oehr_order_items
    ( order_id           NUMBER(12) 
    , line_item_id       NUMBER(3)  NOT NULL
    , product_id         NUMBER(6)  NOT NULL
    , unit_price         NUMBER(8,2)
    , quantity           NUMBER(8)
    , order_item_id      NUMBER(12) 
    , CONSTRAINT oehr_order_items_pk PRIMARY KEY (order_item_id)
    ) ;


REM ===========================================================================
REM Create table orders, which includes a TIMESTAMP column and a check
REM constraint.
REM ===========================================================================

CREATE TABLE oehr_orders
    ( order_id           NUMBER(12)
    , order_date         TIMESTAMP WITH LOCAL TIME ZONE
      CONSTRAINT order_date_nn NOT NULL
    , order_mode         VARCHAR2(8)
    , customer_id        NUMBER(6) CONSTRAINT oehr_order_customer_id_nn NOT NULL
    , order_status       NUMBER(2)
    , order_total        NUMBER(8,2)
    , sales_rep_id       NUMBER(6)
    , promotion_id       NUMBER(6)
    , CONSTRAINT         oehr_order_mode_lov
                         CHECK (order_mode in ('direct','online'))
    , constraint         oehr_order_total_min
                         check (order_total >= 0)
    , CONSTRAINT oehr_order_pk PRIMARY KEY (order_id)
    ) ;


REM ===========================================================================
REM Create inventories table, which contains a concatenated primary key.
REM  Note that PK is only enable after supporting non-unique index is created
REM ===========================================================================
    
CREATE TABLE oehr_inventories
  ( product_id         NUMBER(6)
  , warehouse_id       NUMBER(3) CONSTRAINT oehr_inventory_warehouse_id_nn NOT NULL
  , quantity_on_hand   NUMBER(8)
	CONSTRAINT oehr_inventory_qoh_nn NOT NULL
  , CONSTRAINT oehr_inventory_pk 
	PRIMARY KEY (product_id, warehouse_id) DISABLE NOVALIDATE);

REM ===========================================================================
REM Create table product_information, which contains an INTERVAL datatype and
REM a CHECK ... IN constraint.
REM ===========================================================================

CREATE TABLE oehr_product_information
    ( product_id          NUMBER(6)
    , product_name        VARCHAR2(50)
    , product_description VARCHAR2(2000)
    , category_id         NUMBER(2)
    , weight_class        NUMBER(1)
    , warranty_period     INTERVAL YEAR TO MONTH
    , supplier_id         NUMBER(6)
    , product_status      VARCHAR2(20)
    , list_price          NUMBER(8,2)
    , min_price           NUMBER(8,2)
    , catalog_url         VARCHAR2(50)
    , CONSTRAINT          oehr_product_status_lov
                          CHECK (product_status in ('orderable'
                                                  ,'planned'
                                                  ,'under development'
                                                  ,'obsolete')
                               )
    , CONSTRAINT oehr_product_info_pk PRIMARY KEY (product_id)
    ) ;


REM ===========================================================================
REM Create table product_descriptions, which contains NVARCHAR2 columns for
REM NLS-language information.
REM ===========================================================================

CREATE TABLE oehr_product_descriptions
    ( product_id             NUMBER(6)
    , language_id            VARCHAR2(3)
    , translated_name        NVARCHAR2(50)
CONSTRAINT oehr_translated_name_nn NOT NULL
    , translated_description NVARCHAR2(2000)
CONSTRAINT oehr_translated_desc_nn NOT NULL
    , CONSTRAINT oehr_prod_desc_pk 
	PRIMARY KEY (product_id, language_id)
    );


REM ===========================================================================
REM Create table promotions for OWB demos, congruent with SH schema
REM ===========================================================================
   
CREATE TABLE oehr_promotions (
  promo_id NUMBER(6),
  promo_name VARCHAR2(20),
  CONSTRAINT oehr_promo_id_pk PRIMARY KEY (promo_id));


COMMIT;



