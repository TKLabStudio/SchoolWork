create view ex3 as 
SELECT  *
FROM [dbo].[產品]
where [單價(100g)] > 200

insert ex3([產品編號],[產品名稱],[存貨量],[單價(100g)],[廠商編號])
values ('4','3a632093','50kg', '350', '2')

update ex3 set [存貨量] ='60kg'
where [產品名稱] ='3a632093'

update ex3 set [產品編號] ='6'
where [產品名稱] ='3a632093'

DELETE FROM ex3 WHERE [產品名稱] ='3a632093'

create view ex4 as 
SELECT [產品名稱],[存貨量],[單價(100g)],[廠商編號]
FROM [dbo].[產品]
where [單價(100g)] > 200

insert ex4([產品名稱],[存貨量],[單價(100g)],[廠商編號])
values ('3a632093','50kg', '350', '2')

update ex4 set [存貨量] ='60kg'
where [產品名稱] ='中國超長纖棉花'

update ex4 set [產品編號] ='6'
where [產品名稱] ='中國超長纖棉花'

DELETE FROM ex3 WHERE [產品名稱] ='中國超長纖棉花'
