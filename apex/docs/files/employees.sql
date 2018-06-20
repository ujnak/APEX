CREATE table "OBE_EMPLOYEES" (
    "EMPLOYEE_ID" NUMBER(6) NOT NULL,
    "FIRST_NAME"  VARCHAR2(20),
    "LAST_NAME"   VARCHAR2(25),
    "EMAIL"       VARCHAR2(25),
    "HIRE_DATE"   DATE,
    constraint  "OBE_EMPLOYEES_PK" primary key ("EMPLOYEE_ID")
)
/

INSERT INTO obe_employees VALUES ('1','Sue','Littlefield','sue.littlefield','02/06/2001')
/

INSERT INTO obe_employees VALUES ('2','Mark','Ferris','mark.ferris','04/05/2003')
/

INSERT INTO obe_employees VALUES ('3','Marcie','Young','marcie.young','08/08/1997')
/

INSERT INTO obe_employees VALUES ('4','Joyce','Bean','joyce.bean','04/04/2000')
/

INSERT INTO obe_employees VALUES ('5','Andrew','Jarvis','andrew,jarvis','09/01/1999')
/

INSERT INTO obe_employees VALUES ('6','Anthony','Reed','anthony.reed','10/23/2004')
/

INSERT INTO obe_employees VALUES ('7','Vicki','Dean','vicki.dean','12/17/2001')
/

INSERT INTO obe_employees VALUES ('8','Emily','Roberts','emily.roberts','03/03/2002')
/

INSERT INTO obe_employees VALUES ('9','Teressa','Chow','teressa.chow','09/09/1996')
/


