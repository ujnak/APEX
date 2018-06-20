--------------------------------------------------------
--  File created - Friday-April-20-2012   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PROJECTS
--------------------------------------------------------
/*
  CREATE TABLE "PROJECTS" 
   (	"PROJECT_ID" NUMBER(6,0), 
	"PROJECT_NAME" VARCHAR2(100 BYTE), 
	"PROJECT_START_DATE" DATE, 
	"PROJECT_END_DATE" DATE, 
	"PROJECT_DEPT" NUMBER(4,0), 
	"STATUS" VARCHAR2(30 BYTE)
   ) ;
*/
REM INSERTING into PROJECTS
SET DEFINE OFF;
Insert into PROJECTS (PROJECT_ID,PROJECT_NAME,PROJECT_START_DATE,PROJECT_END_DATE,PROJECT_DEPT,STATUS) values (1,'Maintain Support Systems',to_date('01-DEC-11','DD-MON-RR'),to_date('14-JAN-12','DD-MON-RR'),null,'Closed');
Insert into PROJECTS (PROJECT_ID,PROJECT_NAME,PROJECT_START_DATE,PROJECT_END_DATE,PROJECT_DEPT,STATUS) values (2,'Email Integration',to_date('15-APR-12','DD-MON-RR'),to_date('25-APR-12','DD-MON-RR'),null,'Open');
Insert into PROJECTS (PROJECT_ID,PROJECT_NAME,PROJECT_START_DATE,PROJECT_END_DATE,PROJECT_DEPT,STATUS) values (3,'Employee Satisfaction Survey',to_date('19-JAN-12','DD-MON-RR'),to_date('28-JAN-13','DD-MON-RR'),null,'Open');
Insert into PROJECTS (PROJECT_ID,PROJECT_NAME,PROJECT_START_DATE,PROJECT_END_DATE,PROJECT_DEPT,STATUS) values (4,'Public Website',to_date('15-NOV-12','DD-MON-RR'),to_date('30-NOV-12','DD-MON-RR'),null,'Planned');
--------------------------------------------------------
--  DDL for Index PROJECTS_PK
--------------------------------------------------------
/*
  CREATE UNIQUE INDEX "PROJECTS_PK" ON "PROJECTS" ("PROJECT_ID") 
  ;
/
--------------------------------------------------------
--  Constraints for Table PROJECTS
--------------------------------------------------------

  ALTER TABLE "PROJECTS" ADD CONSTRAINT "PROJECTS_PK" PRIMARY KEY ("PROJECT_ID") ENABLE;
  ALTER TABLE "PROJECTS" MODIFY ("PROJECT_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Ref Constraints for Table PROJECTS
--------------------------------------------------------

  ALTER TABLE "PROJECTS" ADD CONSTRAINT "PROJECTS_DEPARTMENTS_FK" FOREIGN KEY ("PROJECT_DEPT")
	  REFERENCES "DEPARTMENTS" ("DEPARTMENT_ID") ENABLE;
/
*/
