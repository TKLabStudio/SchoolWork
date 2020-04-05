create view ex1 as 
SELECT [客戶編號],[客戶名稱],[地址],[電話],[E-mail],[統一編號]
FROM [dbo].[客戶]

insert ex1([客戶編號],[客戶名稱],[地址],[電話],[E-mail],[統一編號])
values ('4', '3a632093','710台南市永康區四維街28號','0988888888', 'oo@gmail.com#', '11111117')

update ex1 set [電話] ='0977777777'
where [客戶名稱] ='3a632093'

update ex1 set [客戶編號] ='5'
where [客戶名稱] ='3a632093'

DELETE FROM ex1 WHERE [客戶名稱] ='3a632093'

create view ex2 as 
SELECT [客戶名稱],[地址],[電話],[E-mail],[統一編號]
FROM [dbo].[客戶]

insert ex2( [客戶名稱],[地址],[電話],[E-mail],[統一編號])
values ('3a632093','710台南市永康區四維街28號','0988888888', 'oo@gmail.com#', '11111117')

update ex2 set [電話] ='0977777777'
where [客戶名稱] ='三毛'

update ex2 set [客戶編號] ='5'
where [客戶名稱] ='三毛'

DELETE FROM ex2 WHERE [客戶編號] ='3'
DELETE FROM ex2 WHERE [客戶名稱] ='三毛'

create view ex3 as 
SELECT  *
FROM [dbo].[客戶]
where [contract] <> 1
