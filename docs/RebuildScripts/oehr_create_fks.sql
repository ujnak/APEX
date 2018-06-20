Rem
Rem Copyright (c) 2001, 2007, Oracle Corporation.  All rights reserved.  
Rem

ALTER TABLE oehr_orders 
ADD ( CONSTRAINT oehr_orders_sales_rep_fk 
      FOREIGN KEY (sales_rep_id) 
      REFERENCES oehr_employees(employee_id)
      ON DELETE SET NULL
    ) ;

ALTER TABLE oehr_orders 
ADD ( CONSTRAINT oehr_orders_customer_id_fk 
      FOREIGN KEY (customer_id) 
      REFERENCES oehr_customers(customer_id) 
      ON DELETE SET NULL 
    ) ;

ALTER TABLE oehr_warehouses 
ADD ( CONSTRAINT oehr_warehouses_location_fk 
      FOREIGN KEY (location_id)
      REFERENCES oehr_locations(location_id)
      ON DELETE SET NULL
    ) ;

ALTER TABLE oehr_customers
ADD ( CONSTRAINT oehr_cust_acct_mgr_fk
      FOREIGN KEY (account_mgr_id)
      REFERENCES oehr_employees(employee_id)
      ON DELETE SET NULL
    ) ;

ALTER TABLE oehr_inventories 
ADD ( CONSTRAINT oehr_inventories_warehouses_fk 
      FOREIGN KEY (warehouse_id)
      REFERENCES oehr_warehouses (warehouse_id)
      ENABLE NOVALIDATE
    ) ;

ALTER TABLE oehr_inventories 
ADD ( CONSTRAINT oehr_inventories_product_id_fk 
      FOREIGN KEY (product_id)
      REFERENCES oehr_product_information (product_id)
    ) ;

ALTER TABLE oehr_order_items
ADD ( CONSTRAINT oehr_order_items_order_id_fk 
      FOREIGN KEY (order_id)
      REFERENCES oehr_orders(order_id)
      ON DELETE CASCADE
enable novalidate
    ) ;

ALTER TABLE oehr_order_items
ADD ( CONSTRAINT oehr_order_items_product_id_fk 
      FOREIGN KEY (product_id)
      REFERENCES oehr_product_information(product_id)
    ) ;

ALTER TABLE oehr_product_descriptions
ADD ( CONSTRAINT oehr_pd_product_id_fk
      FOREIGN KEY (product_id)
      REFERENCES oehr_product_information(product_id)
    ) ;

COMMIT;
