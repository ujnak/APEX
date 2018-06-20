CREATE TABLE DEPENDENTS 
    ( 
     ID NUMBER  NOT NULL , 
     FIRST_NAME VARCHAR2 (20) , 
     LAST_NAME VARCHAR2 (25) , 
     BIRTHDATE DATE , 
     RELATION VARCHAR2 (25) ,
     GENDER VARCHAR2 (1) , 
     RELATIVE_ID NUMBER 
    ) 
;



ALTER TABLE DEPENDENTS 
    ADD CONSTRAINT DEPENDENTS_PK PRIMARY KEY ( ID ) ;

ALTER TABLE DEPENDENTS 
    ADD CONSTRAINT DEPENDENTS_UN UNIQUE ( FIRST_NAME , LAST_NAME ) 
;



create or replace TRIGGER "DEPENDENTS_T" 
before insert or update on "DEPENDENTS"
for each row
begin
    --
    -- maintain pk and timestamps
    --
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
end;    
/
