create view ex3 as 
SELECT  *
FROM [dbo].[���~]
where [���(100g)] > 200

insert ex3([���~�s��],[���~�W��],[�s�f�q],[���(100g)],[�t�ӽs��])
values ('4','3a632093','50kg', '350', '2')

update ex3 set [�s�f�q] ='60kg'
where [���~�W��] ='3a632093'

update ex3 set [���~�s��] ='6'
where [���~�W��] ='3a632093'

DELETE FROM ex3 WHERE [���~�W��] ='3a632093'

create view ex4 as 
SELECT [���~�W��],[�s�f�q],[���(100g)],[�t�ӽs��]
FROM [dbo].[���~]
where [���(100g)] > 200

insert ex4([���~�W��],[�s�f�q],[���(100g)],[�t�ӽs��])
values ('3a632093','50kg', '350', '2')

update ex4 set [�s�f�q] ='60kg'
where [���~�W��] ='����W���ִ֪�'

update ex4 set [���~�s��] ='6'
where [���~�W��] ='����W���ִ֪�'

DELETE FROM ex3 WHERE [���~�W��] ='����W���ִ֪�'
