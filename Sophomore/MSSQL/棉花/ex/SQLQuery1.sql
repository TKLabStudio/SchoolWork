create view ex1 as 
SELECT [�Ȥ�s��],[�Ȥ�W��],[�a�}],[�q��],[E-mail],[�Τ@�s��]
FROM [dbo].[�Ȥ�]

insert ex1([�Ȥ�s��],[�Ȥ�W��],[�a�}],[�q��],[E-mail],[�Τ@�s��])
values ('4', '3a632093','710�x�n���ñd�ϥ|����28��','0988888888', 'oo@gmail.com#', '11111117')

update ex1 set [�q��] ='0977777777'
where [�Ȥ�W��] ='3a632093'

update ex1 set [�Ȥ�s��] ='5'
where [�Ȥ�W��] ='3a632093'

DELETE FROM ex1 WHERE [�Ȥ�W��] ='3a632093'

create view ex2 as 
SELECT [�Ȥ�W��],[�a�}],[�q��],[E-mail],[�Τ@�s��]
FROM [dbo].[�Ȥ�]

insert ex2( [�Ȥ�W��],[�a�}],[�q��],[E-mail],[�Τ@�s��])
values ('3a632093','710�x�n���ñd�ϥ|����28��','0988888888', 'oo@gmail.com#', '11111117')

update ex2 set [�q��] ='0977777777'
where [�Ȥ�W��] ='�T��'

update ex2 set [�Ȥ�s��] ='5'
where [�Ȥ�W��] ='�T��'

DELETE FROM ex2 WHERE [�Ȥ�s��] ='3'
DELETE FROM ex2 WHERE [�Ȥ�W��] ='�T��'

create view ex3 as 
SELECT  *
FROM [dbo].[�Ȥ�]
where [contract] <> 1
