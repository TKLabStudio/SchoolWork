Declare @customer varchar(60)
select @customer =[au_lname]+' ' +[au_fname]
from [dbo].[authors]
where [au_id]='172-32-1176'
select @customer

select [fname],[lname],right([emp_id],1) �ʧO, �~��=year(getdate())-year([hire_date] )
from [dbo].[employee]

select [fname],[lname], �ʧO=case right([emp_id],1) when 'M' then N'�k' else N'�k' end, �~��=year(getdate())-year([hire_date] )
from [dbo].[employee]

Declare @customer varchar(60),@id varchar(11)
set @id ='409-56-7008'
if @id >='409-56-7008'
begin
   select @id=au_id,  @customer =[au_lname]+' ' +[au_fname] 
   from [dbo].[authors]
order by au_id
end
select @id,@customer

select  au_id,  [au_lname]+' ' +[au_fname]
from [dbo].[authors]
where au_id > '409-56-7008'
order by au_id

SELECT  CASE  DATEPART ( dw, getdate())-1 
               WHEN 1 THEN N'�P���@' 
			WHEN 2 THEN '�P���G'
			WHEN 3 THEN '�P���T'
			WHEN 4 THEN '�P���|'
			WHEN 5 THEN '�P����'
			WHEN 6 THEN '�P����'
			WHEN 7 THEN '�P����'
          End

		  use pubs
SELECT  title ,type,'<' + 
             CASE type   
                WHEN 'business' THEN N'�ӷ~' 
                WHEN 'mod_cook' THEN N'�{�N�i��'
                WHEN 'popular_comp' THEN N'�Z�P�q��'
                WHEN 'psychology' THEN N'�߲z��' 
                when 'trad_cook' then N'�ǲβi��'
                ELSE N'����' 
             END + N'��>' AS ���O 
FROM titles
ORDER BY  ���O



select  [���q�W��],sum([���]*[�ƶq]) as total, '<���U�Ȭ�' + 
      case
          when sum([���]*[�ƶq])>30000 then '����'
          when sum([���]*[�ƶq])<10000 then '�C��'
          else '����' 
      end +'>' as ����
from [dbo].[�Ȥ�],[dbo].[�q�f����],[dbo].[�q�f�D��]
where [dbo].[�Ȥ�].[�Ȥ�s��]=[dbo].[�q�f�D��].[�Ȥ�s��]
and [dbo].[�q�f�D��].[�q�渹�X]=[dbo].[�q�f����].[�q�渹�X]
group by [���q�W��]
--order by sum(UnitPrice*Quantity) desc

select ����,RIGHT(����,3) , count(����)
from temp 
group by ����

use northwind
SELECT CategoryName,'<' + 
             CASE CategoryName   
                WHEN 'Beverages' THEN N'����' 
                WHEN 'Condiments' THEN N'����'
                WHEN 'Confections' THEN N'����'
                WHEN 'Dairy Products' THEN N'��`�~' 
                when 'Grains/Cereals' then N'�\��'
                when 'Meat/Poultry' then N'��'
                when 'Produce' then N'�A���~'
                when 'Seafood' then N'����'
                ELSE N'����' 
             END + N'��>' AS ���O 
FROM Categories
ORDER BY ���O  desc



