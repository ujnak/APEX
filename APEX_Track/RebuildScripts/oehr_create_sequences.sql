Rem
Rem Copyright (c) 2001, 2007, Oracle Corporation.  All rights reserved.  
Rem


Rem 	Useful for any subsequent addition of rows to locations table
Rem 	Starts with 3300

CREATE SEQUENCE oehr_locations_seq
 START WITH     3300
 INCREMENT BY   100
 MAXVALUE       9900
 NOCACHE
 NOCYCLE;

Rem 	Useful for any subsequent addition of rows to departments table
Rem 	Starts with 280 

CREATE SEQUENCE oehr_departments_seq
 START WITH     280
 INCREMENT BY   10
 MAXVALUE       9990
 NOCACHE
 NOCYCLE;

Rem 	Useful for any subsequet addition of rows to employees table
Rem 	Starts with 207 


CREATE SEQUENCE oehr_employees_seq
 START WITH     207
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;

Rem 	Useful for any subsequet addition of rows to order items table
Rem 	Starts with 1001

CREATE SEQUENCE   oehr_ORDER_ITEMS_SEQ  
MINVALUE 1 
MAXVALUE 10000000000000 
INCREMENT BY 1 
START WITH 1001 
NOCACHE  
NOORDER  
NOCYCLE;

Rem 	Useful for any subsequet addition of rows to order table
Rem 	Starts with 1000


CREATE SEQUENCE oehr_orders_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;

Rem 	Useful for any subsequet addition of rows to Customers table
Rem 	Starts with 996

CREATE SEQUENCE   oehr_CUSTOMERS_SEQ 
MINVALUE 1 
MAXVALUE 999999999 
INCREMENT BY 1 
START WITH 996 
NOCACHE  
ORDER 
NOCYCLE;

Rem 	Useful for any subsequet addition of rows to Customers table
Rem 	Starts with 9878

CREATE SEQUENCE  oehr_PRODUCTS_SEQ  
MINVALUE 1 
MAXVALUE 10000000000000 
INCREMENT BY 1 
START WITH 9878 
NOCACHE  
NOORDER  
NOCYCLE;

COMMIT;
