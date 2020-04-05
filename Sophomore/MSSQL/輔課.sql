-- ���㪺��ƪ�w�q
--���d�ұN�i�ܤw�إߦb pubs ��Ʈw�����T�Ӹ�ƪ� (jobs�Bemployee�B�� publishers) �������ƪ�w�q�A�]�t�Ҧ�����������w�q�C

/* ************************** jobs table ************************** */
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
        check (max_lvl > min_lvl)
)


create rule r2 as 
/* ***************** publishers table ******************** */
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

/* ************************* employee table ************************* */
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


-- �ϥιB�⦡�w�q�p���Ʀ�
-- ���d�ұN�����ϥιB�⦡ ((low + high)/2) �p��X myavg �p���Ʀ�C

CREATE TABLE mytable 
   (
    [low] int,
    high int,
    myavg AS ([low] + high)/2
   )

-- �إ߸�ƪ�
CREATE TABLE ����
  ( �s�� int  IDENTITY,
    ��� numeric(5,1),
    �ƶq int,
    �`�� AS ��� * �ƶq
  ) 

-- ���J���

INSERT ���� VALUES (21.5, 8)
INSERT ���� VALUES (12, 3)
INSERT ���� VALUES (6, 8)
INSERT ���� VALUES (4, 3)
SELECT * FROM ����

--�W�[��ƫ��A
sp_addtype type_of_price, 'smallmoney', 'null'

--�W�[�@���p���H���
ALTER TABLE bookstores
   add  �p���H varchar(30)  NULL

-- ��������ƫ��A
ALTER TABLE bookstores
   ALTER COLUMN �p���H
            varchar(25)
            NULL
      
-- �إ�id,no���D��
ALTER TABLE orders
     WITH CHECK ADD
     CONSTRAINT PK_id_no
     PRIMARY KEY (id,no)

-- �������-�R���p���H���
ALTER TABLE bookstores
    DROP COLUMN �p���H

-- �����~���䭭��ˬd
ALTER TABLE orders
    NOCHECK CONSTRAINT FK_Orders_books
-- �Ұʥ~���䭭��ˬd
ALTER TABLE orders
    CHECK CONSTRAINT FK_Orders_books

ALTER TABLE orders
    CHECK CONSTRAINT FK_Orders_bookstores

-- ���ܪ��W��
EXEC sp_rename 'pubs', 'publishers'

--���ܪ�����W��
EXEC sp_rename 'publishers.address' , '�q�T�B', 'COLUMN'

--���ܸ�Ʈw�W��
EXEC sp_rename 'tsao' , 'ttt', 'database'

-- �����
select * from  ����
truncate TABLE ����

-- ����ƩM���c
drop TABLE ����
select * from ����

 use learn
ALTER TABLE ��Ҹ�ƪ� ADD 
/* Add a column referencing another column in the same table. */ 
CONSTRAINT fk_a �Ǹ� REFERENCES �ǥ͸�ƪ�(�Ǹ�)

ALTER TABLE orders
  ADD   CONSTRAINT FK_a   FOREIGN KEY(no)      REFERENCES bookstores(no) ,
             CONSTRAINT FK_b   FOREIGN KEY(id)        REFERENCES books(id)


SET IDENTITY_INSERT jobs Off
SET IDENTITY_INSERT jobs ON

insert into jobs select * from pubs..jobs
insert into publishers select * from pubs..publishers
insert into employee select * from pubs..employee

select * into #temp from dbo.publishers
select * from #temp

Create Default My_default As 'Mr.'
Sp_bindefault my_default,'bookstores.name'
sp_unbindefault 'bookstores.name'
DROP DEFAULT my_default

DROP DEFAULT ee,kk

use bob

Create Rule My_rule
As 
@id like '[A-Z][1-2][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'

create rule rr
as @qty between 300 and 500

Sp_bindrule my_rule,'employee.emp_id'


sp_addtype type_of_name, 'char(8)','null'

sp_droptype type_of_price


-- ���ܸ�ƪ�H�[�J�s��Ʀ�
--���d�ҷ|�s�W���\ Null �Ȫ���Ʀ�A�B�S���z�L DEFAULT �w�q�Ҵ��Ѫ��ȡC�U��ƦC�b�s��Ʀ椤�㦳 NULL�C

CREATE TABLE doc_exa ( column_a INT) 
GO
ALTER TABLE doc_exa ADD column_b VARCHAR(20) NULL
ALTER TABLE doc_exa ALTER column_b VARCHAR(10) NULL



-- ���ܸ�ƪ�H������Ʀ�
--���d�ҷ|�ק��ƪ�H������Ʀ�C

CREATE TABLE doc_exb ( column_a INT, column_b VARCHAR(20) NULL) 
GO
ALTER TABLE doc_exb DROP COLUMN column_b


CREATE TABLE dbo.mytable 
( low int, high int, myavg AS (low + high)/2 ) ;

--�]�w�~����
CREATE TABLE ORDERS 
(Order_ID integer, 
Order_Date date, 
Customer_SID integer, 
Amount double, 
Primary Key (Order_ID), 
Foreign Key (Customer_SID) references CUSTOMER(SID)); 

--�p�� �O�s����  
CREATE TABLE ����
  ( �s�� int  IDENTITY,
    ��� numeric(5,1),
    �ƶq int,
   ��� datetime,
    �`�� AS ��� * �ƶq,
    �O�s����  as year(getdate())-year(���)
  ) 

What is a foreign key?
A foreign key means that values in one table must also appear in another table.

The referenced table is called the parent table while the table with the foreign key is called the child table. The foreign key in the child table will generally reference a primary key in the parent table.

A foreign key with a cascade delete means that if a record in the parent table is deleted, then the corresponding records in the child table with automatically be deleted. This is called a cascade delete.

A foreign key with a cascade delete can be defined in either a CREATE TABLE statement or an ALTER TABLE statement.



--Using a CREATE TABLE statement
--The syntax for creating a foreign key using a CREATE TABLE statement is:

CREATE TABLE table_name
(column1 datatype null/not null,
column2 datatype null/not null,
...
CONSTRAINT fk_column
  FOREIGN KEY (column1, column2, ... column_n)
  REFERENCES parent_table (column1, column2, ... column_n)
  ON DELETE CASCADE
);



For example:

CREATE TABLE supplier 
( supplier_id numeric(10) not null, 
 supplier_name varchar2(50) not null, 
 contact_name varchar2(50),  
 CONSTRAINT supplier_pk PRIMARY KEY (supplier_id) 
); 



CREATE TABLE products 
( product_id numeric(10) not null, 
 supplier_id numeric(10) not null, 
 CONSTRAINT fk_supplier 
   FOREIGN KEY (supplier_id) 
  REFERENCES supplier(supplier_id) 
  ON DELETE CASCADE 
); 

In this example, we've created a primary key on the supplier table called supplier_pk. It consists of only one field - the supplier_id field. Then we've created a foreign key called fk_supplier on the products table that references the supplier table based on the supplier_id field.

Because of the cascade delete, when a record in the supplier table is deleted, all records in the products table will also be deleted that have the same supplier_id value.



We could also create a foreign key (with a cascade delete) with more than one field as in the example below:
--�ڵ��R��(Restrict)
CREATE TABLE supplier 
( supplier_id numeric(10) not null, 
 supplier_name char(50) not null, 
 contact_name char(50),  
 CONSTRAINT supplier_pk PRIMARY KEY (supplier_id) 
); 

CREATE TABLE products 
( product_id numeric(10) not null, 
 supplier_id numeric(10) not null, 
 supplier_name char(50) not null, 
 CONSTRAINT fk_supplier_comp 
   FOREIGN KEY (supplier_id) 
  REFERENCES supplier(supplier_id) 
);  

--�s��ʧR��(Cascade)

In this example, our foreign key called fk_foreign_comp references the supplier table based on two fields - the supplier_id and supplier_name fields.

The cascade delete on the foreign key called fk_foreign_comp causes all corresponding records in the products table to be cascade deleted when a record in the supplier table is deleted, based on supplier_id and supplier_name.



--Using an ALTER TABLE statement
--The syntax for creating a foreign key in an ALTER TABLE statement is:

ALTER TABLE table_name
add CONSTRAINT constraint_name
  FOREIGN KEY (column1, column2, ... column_n)
  REFERENCES parent_table (column1, column2, ... column_n)
  ON DELETE CASCADE;

--For example:

ALTER TABLE products
add CONSTRAINT fk_supplier
  FOREIGN KEY (supplier_id)
  REFERENCES supplier(supplier_id)
  ON DELETE CASCADE;

--In this example, we've created a foreign key (with a cascade delete) called fk_supplier that references the supplier table based on the supplier_id field.




--�]���ŭ�
ALTER TABLE products
add CONSTRAINT fk_supplier
  FOREIGN KEY (supplier_id)
  REFERENCES supplier(supplier_id)
on delete set null;

We could also create a foreign key (with a cascade delete) with more than one field as in the example below:

ALTER TABLE products
add CONSTRAINT fk_supplier
  FOREIGN KEY (supplier_id, supplier_name)
  REFERENCES supplier(supplier_id, supplier_name)
  ON DELETE CASCADE;

use pubs

--�Ȧs��ƪ�
select * into #temp from dbo.publishers
select * from #temp

--�N���p���u���ݩʡA���u�s���B�m�W�B¾�٩M�a�}�A�b��X�ɡA��אּ�s���B���u�m�W�B¾�ȩM�q�T�a�}�A�b���p�N�ƪ���ܦ�
select emp_id as ���u�s��,fname as �W ,�m=lname,��¾��=hire_date from dbo.employee



sp_addtype 'address', 'char (35)', 'null'

Create Rule r1 As  @odate <= getdate()

Sp_bindrule r1,'�q��.�q����'