Rem
Rem Copyright (c) 2001, 2006, Oracle Corporation.  All rights reserved.  
Rem
Rem    NAME
Rem      seed_online_catalog.sql 
Rem

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('hardware1', 'monitors', 11,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 11) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('hardware2', 'printers', 12,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 12) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('hardware3', 'harddisks', 13,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 13) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('hardware4', 'memory components/upgrades', 14,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 14) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('hardware5'
         , 'processors, sound and video cards, network cards, motherboards', 15,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 15) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('hardware6', 'keyboards, mouses, mouse pads', 16,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 16) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('hardware7'
         , 'other peripherals (CD-ROM, DVD, tape cartridge drives, ...)', 17,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 17) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('hardware8'
         , 'miscellaneous hardware (cables, screws, power supplies ...)', 19,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 19) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('software1', 'spreadsheet software', 21,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 21) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('software2', 'word processing software', 22,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 22) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('software3', 'database software', 23,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 23) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('software4', 'operating systems', 24,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 24) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('software5', 'software development tools (including languages)', 25,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 25) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('software6', 'miscellaneous software', 29,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 29) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('office1', 'capitalizable assets (desks, chairs, phones ...)', 31,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 31) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('office2'
         , 'office supplies for daily use (pencils, erasers, staples, ...)', 32,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 32) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('office3', 'manuals, other books', 33,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 33) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_leaf_category_typ('office4', 'miscellaneous office supplies', 39,
  CAST(MULTISET(SELECT o.product_id
    FROM oehr_oc_product_information o
    WHERE o.category_id = 39) as oehr_product_ref_list_typ))) ;

INSERT INTO oehr_categories_tab
  VALUES (oehr_composite_category_typ('hardware', 'computer hardware and peripherals', 10,
  CAST(MULTISET(SELECT REF(g)
    FROM oehr_categories_tab g
    WHERE g.category_id IN (11, 12, 13, 14, 15, 16, 17, 19)) as
         oehr_subcategory_ref_list_typ)));

INSERT INTO oehr_categories_tab
  VALUES (oehr_composite_category_typ('software', 'computer software', 20,
  CAST(MULTISET(SELECT REF(g)
    FROM oehr_categories_tab g
    WHERE g.category_id IN (21, 22, 23, 24, 25, 29)) as 
         oehr_subcategory_ref_list_typ)));

INSERT INTO oehr_categories_tab
  VALUES (oehr_composite_category_typ('office equipment', 'office furniture and supplies', 30,
  CAST(MULTISET(SELECT REF(g)
    FROM oehr_categories_tab g
    WHERE g.category_id IN (31, 32, 33, 39)) as
         oehr_subcategory_ref_list_typ)));

INSERT INTO oehr_categories_tab
  VALUES (oehr_catalog_typ('online catalog'
         , 'catalog of computer hardware, software, and office equipment'
         , 90,
  CAST(MULTISET(SELECT REF(g)
    FROM oehr_categories_tab g
    WHERE g.category_id IN (10, 20, 30)) as
         oehr_subcategory_ref_list_typ)));

ALTER TYPE oehr_category_typ
 ADD ATTRIBUTE (parent_category_id number(2)) CASCADE;

UPDATE oehr_categories_tab
  SET parent_category_id = 90
  WHERE category_id IN (10, 20, 30);

UPDATE oehr_categories_tab
  SET parent_category_id = 10
  WHERE category_id IN (11, 12, 13, 14, 15, 16, 17, 19);

UPDATE oehr_categories_tab
  SET parent_category_id = 20
  WHERE category_id IN (21, 22, 23, 24, 25, 29);

UPDATE oehr_categories_tab
  SET parent_category_id = 30
  WHERE category_id IN (31, 32, 33, 39);

COMMIT;

ALTER TYPE oehr_catalog_typ COMPILE BODY;
ALTER TYPE oehr_composite_category_typ COMPILE BODY;
ALTER TYPE oehr_leaf_category_typ COMPILE BODY; 