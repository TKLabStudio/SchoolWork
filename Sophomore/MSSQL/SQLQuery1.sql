create database a3a632093

use s3a632093

CREATE TABLE jobs
(
   job_id  smallint not null
    IDENTITY(1,1)
      PRIMARY KEY,
   job_desc        varchar(50)     NOT NULL
      DEFAULT 'New Position - title not formalized yet',
   min_lvl tinyint NOT NULL
      CHECK (min_lvl >= 10),
   max_lvl tinyint NOT NULL
        check (max_lvl >= 100)
)
set IDENTITY_INSERT jobs on
go
insert jobs (job_id, job_desc, min_lvl, max_lvl) select * from pubs..jobs

sp_addtype empid, 'char(9)','null'


CREATE TABLE publishers
(
   pub_id  char(4) NOT NULL 
         CONSTRAINT UPKCL_pubind PRIMARY KEY
         CHECK (pub_id IN ('1389', '0736', '0877', '1622', '1756')
            OR pub_id LIKE '99[0-9][0-9]'),
   pub_name      varchar(40)     NULL,
   city         varchar(20)     NULL,
   state      char(2) NULL,
   country      varchar(30)     NULL
            DEFAULT('USA')
)

 insert into publishers select  *from pubs.. publishers

CREATE TABLE employee 
(
   emp_id  empid
      CONSTRAINT PK_emp_id PRIMARY KEY 
      CONSTRAINT CK_emp_id CHECK (emp_id LIKE 
         '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' or
         emp_id LIKE '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]'),
      /* Each employee ID consists of three characters that 
      represent the employee's initials, followed by a five 
      digit number ranging from 10000 through 99999 and then the 
      employee's gender (M or F). A (hyphen) - is acceptable 
      for the middle initial. */
   fname   varchar(20)     NOT NULL,
   minit   char(1) NULL,
   lname   varchar(30)     NOT NULL,
   job_id  smallint        NOT NULL
      DEFAULT 1
      /* Entry job_id for new hires. */
      REFERENCES jobs(job_id),
   job_lvl tinyint
      DEFAULT 10,
      /* Entry job_lvl for new hires. */
   pub_id  char(4) NOT NULL
      DEFAULT ('9952')
      REFERENCES publishers(pub_id),
      /* By default, the Parent Company Publisher is the company
      to whom each employee reports. */
   hire_date       datetime        NOT NULL
      DEFAULT (getdate())
      /* By default, the current system date is entered. */
)

insert into employee select * from pubs..employee

insert into  employee([emp_id],[fname],[lname]) values ('QQQ12421M','独','')

CREATE TABLE publishers
(
   pub_id  char(4) NOT NULL 
         CONSTRAINT UPKCL_pubind PRIMARY KEY
         CHECK (pub_id IN ('1389', '0736', '0877', '1622', '1756')
            OR pub_id LIKE '99[0-9][0-9]'),
   pub_name      varchar(40)     NULL,
   city         varchar(20)     NULL,
   state      char(2) NULL,
   country      varchar(30)     NULL
            DEFAULT('USA')
)

insert into publishers select * from pubs..publishers

CREATE TABLE mytable 
   (
    [low] int,
    high int,
    myavg AS ([low] + high)/2
   )

   CREATE TABLE ︳基
  ( 絪腹 int  IDENTITY,
    虫基 money,
    计秖 int,
    羆基 AS 虫基 * 计秖
  ) 

  select * from [dbo].[︳基]

  ALTER TABLE [dbo].[publishers]
  drop [UPKCL_pubind]

  ALTER TABLE dbo.publishers
ADD PRIMARY KEY (pub_id)


  ALTER TABLE [dbo].[jobs]
  drop [PK__jobs__6E32B6A58D0E0F1C]

    ALTER TABLE [dbo].[jobs]
ADD PRIMARY KEY (job_id)