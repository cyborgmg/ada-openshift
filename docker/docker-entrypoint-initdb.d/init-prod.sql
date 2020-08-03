CREATE USER C##MCM IDENTIFIED BY c6b94gmg;
ALTER USER "C##MCM"
DEFAULT TABLESPACE "SYSTEM"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;

-- QUOTAS
ALTER USER "C##MCM" QUOTA UNLIMITED ON "SYSTEM";

-- ROLES
GRANT "DATAPUMP_EXP_FULL_DATABASE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "DBA" TO "C##MCM" WITH ADMIN OPTION;
GRANT "HS_ADMIN_EXECUTE_ROLE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "ADM_PARALLEL_EXECUTE_TASK" TO "C##MCM" WITH ADMIN OPTION;
GRANT "CTXAPP" TO "C##MCM" WITH ADMIN OPTION;
GRANT "SELECT_CATALOG_ROLE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "CONNECT" TO "C##MCM" WITH ADMIN OPTION;
GRANT "DATAPUMP_IMP_FULL_DATABASE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "OEM_MONITOR" TO "C##MCM" WITH ADMIN OPTION;
GRANT "APEX_ADMINISTRATOR_ROLE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "AQ_USER_ROLE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "SCHEDULER_ADMIN" TO "C##MCM" WITH ADMIN OPTION;
GRANT "XDB_SET_INVOKER" TO "C##MCM" WITH ADMIN OPTION;
GRANT "RECOVERY_CATALOG_OWNER" TO "C##MCM" WITH ADMIN OPTION;
GRANT "DBFS_ROLE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES_OVER_HTTP" TO "C##MCM" WITH ADMIN OPTION;
GRANT "HS_ADMIN_SELECT_ROLE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "PLUSTRACE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "RESOURCE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "AQ_ADMINISTRATOR_ROLE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "DELETE_CATALOG_ROLE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES_WITH_PUBLIC" TO "C##MCM" WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES" TO "C##MCM" WITH ADMIN OPTION;
GRANT "EXECUTE_CATALOG_ROLE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "EXP_FULL_DATABASE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "GATHER_SYSTEM_STATISTICS" TO "C##MCM" WITH ADMIN OPTION;
GRANT "LOGSTDBY_ADMINISTRATOR" TO "C##MCM" WITH ADMIN OPTION;
GRANT "AUTHENTICATEDUSER" TO "C##MCM" WITH ADMIN OPTION;
GRANT "OEM_ADVISOR" TO "C##MCM" WITH ADMIN OPTION;
GRANT "HS_ADMIN_ROLE" TO "C##MCM" WITH ADMIN OPTION;
GRANT "XDBADMIN" TO "C##MCM" WITH ADMIN OPTION;
GRANT "IMP_FULL_DATABASE" TO "C##MCM" WITH ADMIN OPTION;
ALTER USER "C##MCM" DEFAULT ROLE "DATAPUMP_EXP_FULL_DATABASE","DBA","HS_ADMIN_EXECUTE_ROLE","ADM_PARALLEL_EXECUTE_TASK","CTXAPP","SELECT_CATALOG_ROLE","CONNECT","DATAPUMP_IMP_FULL_DATABASE","OEM_MONITOR","APEX_ADMINISTRATOR_ROLE","AQ_USER_ROLE","SCHEDULER_ADMIN","XDB_SET_INVOKER","RECOVERY_CATALOG_OWNER","DBFS_ROLE","XDB_WEBSERVICES_OVER_HTTP","HS_ADMIN_SELECT_ROLE","PLUSTRACE","RESOURCE","AQ_ADMINISTRATOR_ROLE","DELETE_CATALOG_ROLE","XDB_WEBSERVICES_WITH_PUBLIC","XDB_WEBSERVICES","EXECUTE_CATALOG_ROLE","EXP_FULL_DATABASE","GATHER_SYSTEM_STATISTICS","LOGSTDBY_ADMINISTRATOR","AUTHENTICATEDUSER","OEM_ADVISOR","HS_ADMIN_ROLE","XDBADMIN","IMP_FULL_DATABASE";

-- SYSTEM PRIVILEGES
GRANT CREATE JOB TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY CONTEXT TO "C##MCM" WITH ADMIN OPTION;
GRANT UPDATE ANY CUBE TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY TRIGGER TO "C##MCM" WITH ADMIN OPTION;
GRANT MANAGE ANY FILE GROUP TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER PUBLIC DATABASE LINK TO "C##MCM" WITH ADMIN OPTION;
GRANT MANAGE FILE GROUP TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY INDEX TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY SEQUENCE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER PROFILE TO "C##MCM" WITH ADMIN OPTION;
GRANT UNDER ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ASSEMBLY TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY LIBRARY TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY EDITION TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ROLE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE LIBRARY TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ROLLBACK SEGMENT TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE TRIGGER TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY PROCEDURE TO "C##MCM" WITH ADMIN OPTION;
GRANT ADMINISTER DATABASE TRIGGER TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY MEASURE FOLDER TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY PROCEDURE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY OUTLINE TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ANY INDEXTYPE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY DIRECTORY TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY RULE SET TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY MINING MODEL TO "C##MCM" WITH ADMIN OPTION;
GRANT DEBUG CONNECT SESSION TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY MINING MODEL TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER SESSION TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE MATERIALIZED VIEW TO "C##MCM" WITH ADMIN OPTION;
GRANT MERGE ANY VIEW TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY INDEX TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ANY RULE SET TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY MATERIALIZED VIEW TO "C##MCM" WITH ADMIN OPTION;
GRANT AUDIT SYSTEM TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE OPERATOR TO "C##MCM" WITH ADMIN OPTION;
GRANT MANAGE ANY QUEUE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY SQL PROFILE TO "C##MCM" WITH ADMIN OPTION;
GRANT GRANT ANY OBJECT PRIVILEGE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE INDEXTYPE TO "C##MCM" WITH ADMIN OPTION;
GRANT AUDIT ANY TO "C##MCM" WITH ADMIN OPTION;
GRANT DEBUG ANY PROCEDURE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY MEASURE FOLDER TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY SEQUENCE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE MEASURE FOLDER TO "C##MCM" WITH ADMIN OPTION;
GRANT UPDATE ANY CUBE BUILD PROCESS TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE VIEW TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER DATABASE LINK TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY ASSEMBLY TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY EVALUATION CONTEXT TO "C##MCM" WITH ADMIN OPTION;
GRANT SELECT ANY MINING MODEL TO "C##MCM" WITH ADMIN OPTION;
GRANT DELETE ANY CUBE DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE SESSION TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE RULE TO "C##MCM" WITH ADMIN OPTION;
GRANT BECOME USER TO "C##MCM" WITH ADMIN OPTION;
GRANT SELECT ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT INSERT ANY MEASURE FOLDER TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY SQL PROFILE TO "C##MCM" WITH ADMIN OPTION;
GRANT FORCE ANY TRANSACTION TO "C##MCM" WITH ADMIN OPTION;
GRANT DELETE ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY SEQUENCE TO "C##MCM" WITH ADMIN OPTION;
GRANT SELECT ANY CUBE DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY EDITION TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE EXTERNAL JOB TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY MATERIALIZED VIEW TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY CUBE BUILD PROCESS TO "C##MCM" WITH ADMIN OPTION;
GRANT FLASHBACK ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY RULE SET TO "C##MCM" WITH ADMIN OPTION;
GRANT BACKUP ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY CUBE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ANY LIBRARY TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY OUTLINE TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ASSEMBLY TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY CLUSTER TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ANY CLASS TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY RULE SET TO "C##MCM" WITH ADMIN OPTION;
GRANT SELECT ANY SEQUENCE TO "C##MCM" WITH ADMIN OPTION;
GRANT UNDER ANY TYPE TO "C##MCM" WITH ADMIN OPTION;
GRANT MANAGE TABLESPACE TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY OPERATOR TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY OPERATOR TO "C##MCM" WITH ADMIN OPTION;
GRANT EXEMPT IDENTITY POLICY TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE TYPE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE TABLESPACE TO "C##MCM" WITH ADMIN OPTION;
GRANT SELECT ANY TRANSACTION TO "C##MCM" WITH ADMIN OPTION;
GRANT DELETE ANY MEASURE FOLDER TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY CUBE TO "C##MCM" WITH ADMIN OPTION;
GRANT LOCK ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE EVALUATION CONTEXT TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY TYPE TO "C##MCM" WITH ADMIN OPTION;
GRANT ADVISOR TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE PUBLIC DATABASE LINK TO "C##MCM" WITH ADMIN OPTION;
GRANT ANALYZE ANY TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY RULE TO "C##MCM" WITH ADMIN OPTION;
GRANT INSERT ANY CUBE DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ROLLBACK SEGMENT TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY JOB TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER USER TO "C##MCM" WITH ADMIN OPTION;
GRANT QUERY REWRITE TO "C##MCM" WITH ADMIN OPTION;
GRANT SELECT ANY DICTIONARY TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE PUBLIC SYNONYM TO "C##MCM" WITH ADMIN OPTION;
GRANT GLOBAL QUERY REWRITE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY CUBE DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY CUBE DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY CLUSTER TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY RULE TO "C##MCM" WITH ADMIN OPTION;
GRANT UPDATE ANY CUBE DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT SYSDBA TO "C##MCM" WITH ADMIN OPTION;
GRANT ADMINISTER RESOURCE MANAGER TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY SYNONYM TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY SYNONYM TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY MINING MODEL TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ANY PROCEDURE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE SYNONYM TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ANY PROGRAM TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ANY TYPE TO "C##MCM" WITH ADMIN OPTION;
GRANT ON COMMIT REFRESH TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE SEQUENCE TO "C##MCM" WITH ADMIN OPTION;
GRANT COMMENT ANY MINING MODEL TO "C##MCM" WITH ADMIN OPTION;
GRANT ADMINISTER SQL TUNING SET TO "C##MCM" WITH ADMIN OPTION;
GRANT SYSOPER TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY INDEXTYPE TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY INDEX TO "C##MCM" WITH ADMIN OPTION;
GRANT RESTRICTED SESSION TO "C##MCM" WITH ADMIN OPTION;
GRANT DEQUEUE ANY QUEUE TO "C##MCM" WITH ADMIN OPTION;
GRANT ANALYZE ANY DICTIONARY TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY INDEXTYPE TO "C##MCM" WITH ADMIN OPTION;
GRANT ADMINISTER ANY SQL TUNING SET TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE USER TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ANY OPERATOR TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE CUBE BUILD PROCESS TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE PROFILE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY ROLE TO "C##MCM" WITH ADMIN OPTION;
GRANT UPDATE ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY LIBRARY TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY VIEW TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY CLUSTER TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ANY RULE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER TABLESPACE TO "C##MCM" WITH ADMIN OPTION;
GRANT UNDER ANY VIEW TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ANY ASSEMBLY TO "C##MCM" WITH ADMIN OPTION;
GRANT GRANT ANY PRIVILEGE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY TRIGGER TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY VIEW TO "C##MCM" WITH ADMIN OPTION;
GRANT EXPORT FULL DATABASE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY EVALUATION CONTEXT TO "C##MCM" WITH ADMIN OPTION;
GRANT FLASHBACK ARCHIVE ADMINISTER TO "C##MCM" WITH ADMIN OPTION;
GRANT IMPORT FULL DATABASE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY OUTLINE TO "C##MCM" WITH ADMIN OPTION;
GRANT COMMENT ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE DATABASE LINK TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP PUBLIC SYNONYM TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP USER TO "C##MCM" WITH ADMIN OPTION;
GRANT CHANGE NOTIFICATION TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE MINING MODEL TO "C##MCM" WITH ADMIN OPTION;
GRANT INSERT ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP PROFILE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY MATERIALIZED VIEW TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE RULE SET TO "C##MCM" WITH ADMIN OPTION;
GRANT EXEMPT ACCESS POLICY TO "C##MCM" WITH ADMIN OPTION;
GRANT MANAGE SCHEDULER TO "C##MCM" WITH ADMIN OPTION;
GRANT READ ANY FILE GROUP TO "C##MCM" WITH ADMIN OPTION;
GRANT FORCE TRANSACTION TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY CUBE BUILD PROCESS TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY TYPE TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY PROCEDURE TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP PUBLIC DATABASE LINK TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY INDEXTYPE TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY SQL PROFILE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER SYSTEM TO "C##MCM" WITH ADMIN OPTION;
GRANT UNLIMITED TABLESPACE TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY ROLE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY CUBE DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY CUBE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY TRIGGER TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY ASSEMBLY TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY TABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT ADMINISTER SQL MANAGEMENT OBJECT TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY DIRECTORY TO "C##MCM" WITH ADMIN OPTION;
GRANT ENQUEUE ANY QUEUE TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY EVALUATION CONTEXT TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY ASSEMBLY TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY TYPE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE CLUSTER TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY CONTEXT TO "C##MCM" WITH ADMIN OPTION;
GRANT EXECUTE ANY EVALUATION CONTEXT TO "C##MCM" WITH ADMIN OPTION;
GRANT RESUMABLE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE ANY LIBRARY TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP ANY EDITION TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE PROCEDURE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER DATABASE TO "C##MCM" WITH ADMIN OPTION;
GRANT SELECT ANY CUBE TO "C##MCM" WITH ADMIN OPTION;
GRANT GRANT ANY ROLE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY RULE TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE CUBE DIMENSION TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ANY OPERATOR TO "C##MCM" WITH ADMIN OPTION;
GRANT CREATE CUBE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER RESOURCE COST TO "C##MCM" WITH ADMIN OPTION;
GRANT DROP TABLESPACE TO "C##MCM" WITH ADMIN OPTION;
GRANT ALTER ROLLBACK SEGMENT TO "C##MCM" WITH ADMIN OPTION;

--------------------------------------------------------
--  Arquivo criado - Quinta-feira-Dezembro-05-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CAR_SQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##MCM"."CAR_SQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 18 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COLOR_SQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##MCM"."COLOR_SQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PERFIL_SQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##MCM"."PERFIL_SQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 0 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_SQ
--------------------------------------------------------

   CREATE SEQUENCE  "C##MCM"."USER_SQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CAR
--------------------------------------------------------

  CREATE TABLE "C##MCM"."CAR" 
   (	"ID" NUMBER(*,0), 
	"BRAND" VARCHAR2(100 BYTE), 
	"ANO" NUMBER, 
	"ID_COLOR" NUMBER(*,0), 
	"PRICE" NUMBER, 
	"SALE_DATE" DATE, 
	"STATUS" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COLOR
--------------------------------------------------------

  CREATE TABLE "C##MCM"."COLOR" 
   (	"ID" NUMBER(*,0), 
	"NOME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PERFIL
--------------------------------------------------------

  CREATE TABLE "C##MCM"."PERFIL" 
   (	"ID" NUMBER, 
	"ENUM" VARCHAR2(100 BYTE), 
	"ID_USUARIO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "C##MCM"."USUARIO" 
   (	"ID" NUMBER(*,0), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE), 
	"PERFIL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into C##MCM.CAR
SET DEFINE OFF;
Insert into C##MCM.CAR (ID,BRAND,ANO,ID_COLOR,PRICE,SALE_DATE,STATUS) values ('1','VW','2012','1','10000',to_date('01/01/18','DD/MM/RR'),'P');
Insert into C##MCM.CAR (ID,BRAND,ANO,ID_COLOR,PRICE,SALE_DATE,STATUS) values ('2','Audi','2013','2','11000',to_date('02/01/18','DD/MM/RR'),'S');
Insert into C##MCM.CAR (ID,BRAND,ANO,ID_COLOR,PRICE,SALE_DATE,STATUS) values ('3','Renault','2014','3','12000',to_date('03/01/18','DD/MM/RR'),'P');
Insert into C##MCM.CAR (ID,BRAND,ANO,ID_COLOR,PRICE,SALE_DATE,STATUS) values ('4','BMW','2015','4','13000',to_date('04/01/18','DD/MM/RR'),'B');
Insert into C##MCM.CAR (ID,BRAND,ANO,ID_COLOR,PRICE,SALE_DATE,STATUS) values ('5','Mercedes','2016','5','14000',to_date('05/01/18','DD/MM/RR'),'S');
Insert into C##MCM.CAR (ID,BRAND,ANO,ID_COLOR,PRICE,SALE_DATE,STATUS) values ('6','Volvo','2017','6','15000',to_date('06/01/18','DD/MM/RR'),'P');
Insert into C##MCM.CAR (ID,BRAND,ANO,ID_COLOR,PRICE,SALE_DATE,STATUS) values ('7','Honda','2018','1','16000',to_date('07/01/18','DD/MM/RR'),'B');
Insert into C##MCM.CAR (ID,BRAND,ANO,ID_COLOR,PRICE,SALE_DATE,STATUS) values ('8','Jaguar','2019','2','17000',to_date('08/01/18','DD/MM/RR'),'S');
Insert into C##MCM.CAR (ID,BRAND,ANO,ID_COLOR,PRICE,SALE_DATE,STATUS) values ('9','Ford','2020','3','18000',to_date('09/01/18','DD/MM/RR'),'P');
Insert into C##MCM.CAR (ID,BRAND,ANO,ID_COLOR,PRICE,SALE_DATE,STATUS) values ('10','Fiat','2021','4','19000',to_date('10/01/18','DD/MM/RR'),'B');
Insert into C##MCM.CAR (ID,BRAND,ANO,ID_COLOR,PRICE,SALE_DATE,STATUS) values ('16','AAAAAAAAAAAAAA','222222','2','222222',to_date('11/03/20','DD/MM/RR'),'S');
REM INSERTING into C##MCM.COLOR
SET DEFINE OFF;
Insert into C##MCM.COLOR (ID,NOME) values ('1','Orange');
Insert into C##MCM.COLOR (ID,NOME) values ('2','Black');
Insert into C##MCM.COLOR (ID,NOME) values ('3','Gray');
Insert into C##MCM.COLOR (ID,NOME) values ('4','Blue');
Insert into C##MCM.COLOR (ID,NOME) values ('5','Yellow');
Insert into C##MCM.COLOR (ID,NOME) values ('6','Red');
REM INSERTING into C##MCM.PERFIL
SET DEFINE OFF;
Insert into C##MCM.PERFIL (ID,ENUM,ID_USUARIO) values ('1','ROLE_ADMIN','1');
Insert into C##MCM.PERFIL (ID,ENUM,ID_USUARIO) values ('2','ROLE_CUSTUMER','2');
REM INSERTING into C##MCM.USUARIO
SET DEFINE OFF;
Insert into C##MCM.USUARIO (ID,EMAIL,PASSWORD,PERFIL) values ('1','admin@helpdesk.com','$2a$10$qUU8yaDD4.JGTXzDj.G1Z.c8Gb0KYfXA4Qk/SixA.PnAE1GVrykhu','ROLE_ADMIN');
Insert into C##MCM.USUARIO (ID,EMAIL,PASSWORD,PERFIL) values ('2','custumer@helpdesk.com','$2a$10$8lAC1uDRhLci6tSl7W9MDOkEC.peDrDsD.ImnHidx7KrFPepHakn6','ROLE_CUSTUMER');
--------------------------------------------------------
--  DDL for Index PERFIL_UN
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##MCM"."PERFIL_UN" ON "C##MCM"."PERFIL" ("ENUM", "ID_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COLOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##MCM"."COLOR_PK" ON "C##MCM"."COLOR" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##MCM"."USER_PK" ON "C##MCM"."USUARIO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USER_UN
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##MCM"."USER_UN" ON "C##MCM"."USUARIO" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PERFIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##MCM"."PERFIL_PK" ON "C##MCM"."PERFIL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##MCM"."CAR_PK" ON "C##MCM"."CAR" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table COLOR
--------------------------------------------------------

  ALTER TABLE "C##MCM"."COLOR" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##MCM"."COLOR" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "C##MCM"."COLOR" ADD CONSTRAINT "COLOR_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE "C##MCM"."CAR" ADD CONSTRAINT "CAR_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERFIL
--------------------------------------------------------

  ALTER TABLE "C##MCM"."PERFIL" ADD CONSTRAINT "PERFIL_UN" UNIQUE ("ENUM", "ID_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "C##MCM"."PERFIL" ADD CONSTRAINT "PERFIL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "C##MCM"."USUARIO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##MCM"."USUARIO" ADD CONSTRAINT "USER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "C##MCM"."USUARIO" ADD CONSTRAINT "USER_UN" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE "C##MCM"."CAR" ADD CONSTRAINT "CAR_COLOR_FK" FOREIGN KEY ("ID_COLOR")
	  REFERENCES "C##MCM"."COLOR" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERFIL
--------------------------------------------------------

  ALTER TABLE "C##MCM"."PERFIL" ADD CONSTRAINT "FK_USUARIO" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "C##MCM"."USUARIO" ("ID") ENABLE;
