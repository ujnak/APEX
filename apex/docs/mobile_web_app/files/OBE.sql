CREATE TABLE DEPARTMENTS
   (	DEPARTMENT_ID NUMERIC(4,0), 
          CONSTRAINT DEPT_ID_PK PRIMARY KEY (DEPARTMENT_ID),
	DEPARTMENT_NAME VARCHAR2(30) NOT NULL, 
	LOCATION_ID NUMERIC(4,0)
   );

CREATE TABLE  LOCATIONS
   (	LOCATION_ID NUMERIC(4,0), 
	STREET_ADDRESS VARCHAR2(40), 
	POSTAL_CODE VARCHAR2(12), 
	CITY VARCHAR2(30) NOT NULL , 
	 CONSTRAINT "LOC_ID_PK" PRIMARY KEY ("LOCATION_ID") 
   );

CREATE TABLE  PROJECTS
   (	"PROJECT_ID" NUMERIC(6,0) NOT NULL, 
	"PROJECT_NAME" VARCHAR2(100), 
	"PROJECT_START_DATE" DATE, 
	"PROJECT_END_DATE" DATE, 
	"PROJECT_DEPT" NUMERIC(4,0), 
	"STATUS" VARCHAR2(30), 
	 CONSTRAINT "PROJECTS_PK" PRIMARY KEY ("PROJECT_ID") 
   );
   
   
CREATE table EMPLOYEES (
    "EMPLOYEE_ID" NUMBER(6) NOT NULL,
    "FIRST_NAME"  VARCHAR2(20),
    "LAST_NAME"   VARCHAR2(25),
    "EMAIL"       VARCHAR2(25),
    "HIRE_DATE"   DATE,
    "DEPARTMENT_ID" NUMBER(4,0),
    constraint  "EMPLOYEES_PK" primary key ("EMPLOYEE_ID")
);

alter table "EMPLOYEES" add constraint EMPLOYEES_FK foreign key("DEPARTMENT_ID") references "DEPARTMENTS"("DEPARTMENT_ID")
/



insert into DEPARTMENTS values
   (	10,'Administration', 1700);
insert into DEPARTMENTS values
   (	20,'Marketing', 1800);
insert into DEPARTMENTS values
   (	30,'Purchasing', 1700);
insert into DEPARTMENTS values
   (	40,'Human Resources', 2400);


insert into LOCATIONS values
   (	1000,'1297 Via Cola di Rie', '00989', 'Roma');
insert into LOCATIONS values
   (	1300,'9450 Kamiya-cho', '6823', 'Hiroshima');
insert into LOCATIONS values
   (	1500,'2011 Interiors Blvd', '99236', 'South San Francisco');
insert into LOCATIONS values
   (	1700,'2004 Charade Rd', '98199', 'Seattle');
insert into LOCATIONS values
   (	1800,'147 Spadina Ave', 'M5V 2L7', 'Toronto');
insert into LOCATIONS values
   (	2000,'40-5-12 Laogianggen', '190518', 'Beijing');
insert into LOCATIONS values
   (	2200,'12-98 Victoria Street', '2901', 'Sydney');
insert into LOCATIONS values
   (	2300,'1298 Vileparle (E)', '490231', 'Bombay');
insert into LOCATIONS values
   (	2400,'8204 Arthur St', null, 'London');

insert into PROJECTS values
   (	1,'Maintain Support Systems', to_date('12-03-2014', 'mm-dd-yyyy'), to_date('01-06-2014', 'mm-dd-yyyy'), 20, 'Open');
insert into PROJECTS values
   (	2,'Email Integration', to_date('06-22-2013', 'mm-dd-yyyy'), to_date('02-01-2014', 'mm-dd-yyyy'), 10, 'Closed');
insert into PROJECTS values
   (	3,'Employee Satisfaction Survey', to_date('04-07-2014', 'mm-dd-yyyy'), to_date('08-07-2014', 'mm-dd-yyyy'), 20, 'Planned');
insert into PROJECTS values
   (	4,'Public Website', to_date('02-01-2013','mm-dd-yyyy'),to_date( '10-01-2014', 'mm-dd-yyyy'), 30, 'Open');
insert into PROJECTS values
   (	5,'Maintain Details', to_date('11-09-2013', 'mm-dd-yyyy'), to_date('06-09-2014', 'mm-dd-yyyy'), 40, 'Open');
insert into PROJECTS values
   (	6,'Maintain Employee Details', to_date('01-20-2013', 'mm-dd-yyyy'), to_date('07-20-2013', 'mm-dd-yyyy'), 40, 'Closed');
insert into PROJECTS values
   (	7,'Maintain Purchase Information', to_date('10-10-2013', 'mm-dd-yyyy'), to_date('06-10-2014', 'mm-dd-yyyy'), 30, 'Open');
insert into PROJECTS values
   (	8,'Stock Purchase', to_date('01-11-2014', 'mm-dd-yyyy'), to_date('07-11-2014', 'mm-dd-yyyy'), 30, 'Planned');
insert into PROJECTS values
   (	9,'Upgrade Systems', to_date('01-01-2013', 'mm-dd-yyyy'), to_date('05-01-2013', 'mm-dd-yyyy'), 10, 'Open');
insert into PROJECTS values
   (	10,'Track Deliveries', to_date('08-18-2013', 'mm-dd-yyyy'), to_date('06-01-2014', 'mm-dd-yyyy'), 30, 'Open');
   


INSERT INTO EMPLOYEES VALUES ('1','Sue','Littlefield','sue.littlefield',to_date('06-02-2001','dd-mm-yyyy'),10)
/

INSERT INTO EMPLOYEES VALUES ('2','Mark','Ferris','mark.ferris',to_date('05-04-2003','dd-mm-yyyy'),20)
/

INSERT INTO EMPLOYEES VALUES ('3','Marcie','Young','marcie.young',to_date('08-09-1997','dd-mm-yyyy'),30)
/

INSERT INTO EMPLOYEES VALUES ('4','Joyce','Bean','joyce.bean',to_date('04-04-2000','dd-mm-yyyy'),40)
/

INSERT INTO EMPLOYEES VALUES ('5','Andrew','Jarvis','andrew,jarvis',to_date('01-11-1999','dd-mm-yyyy'),10)
/

INSERT INTO EMPLOYEES VALUES ('6','Anthony','Reed','anthony.reed',to_date('23-Oct-2004','dd-mm-yyyy'),20)
/

INSERT INTO EMPLOYEES VALUES ('7','Vicki','Dean','vicki.dean',to_date('17-12-2001','dd-mm-yyyy'),30)
/

INSERT INTO EMPLOYEES VALUES ('8','Emily','Roberts','emily.roberts',to_date('03-03-2002', 'dd-mm-yyyy'),40)
/

INSERT INTO EMPLOYEES VALUES ('9','Teressa','Chow','teressa.chow',to_date('09-09-1996','dd-mm-yyyy'),10)
/   