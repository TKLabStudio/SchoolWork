Declare @customer varchar(60)
select @customer =[au_lname]+' ' +[au_fname]
from [dbo].[authors]
where [au_id]='172-32-1176'
select @customer

select [fname],[lname],right([emp_id],1) 性別, 年資=year(getdate())-year([hire_date] )
from [dbo].[employee]

select [fname],[lname], 性別=case right([emp_id],1) when 'M' then N'男' else N'女' end, 年資=year(getdate())-year([hire_date] )
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
               WHEN 1 THEN N'星期一' 
			WHEN 2 THEN '星期二'
			WHEN 3 THEN '星期三'
			WHEN 4 THEN '星期四'
			WHEN 5 THEN '星期五'
			WHEN 6 THEN '星期六'
			WHEN 7 THEN '星期天'
          End

		  use pubs
SELECT  title ,type,'<' + 
             CASE type   
                WHEN 'business' THEN N'商業' 
                WHEN 'mod_cook' THEN N'現代烹飪'
                WHEN 'popular_comp' THEN N'暢銷電腦'
                WHEN 'psychology' THEN N'心理學' 
                when 'trad_cook' then N'傳統烹飪'
                ELSE N'未分' 
             END + N'類>' AS 類別 
FROM titles
ORDER BY  類別



select  [公司名稱],sum([單價]*[數量]) as total, '<此顧客為' + 
      case
          when sum([單價]*[數量])>30000 then '高等'
          when sum([單價]*[數量])<10000 then '低等'
          else '中等' 
      end +'>' as 等級
from [dbo].[客戶],[dbo].[訂貨明細],[dbo].[訂貨主檔]
where [dbo].[客戶].[客戶編號]=[dbo].[訂貨主檔].[客戶編號]
and [dbo].[訂貨主檔].[訂單號碼]=[dbo].[訂貨明細].[訂單號碼]
group by [公司名稱]
--order by sum(UnitPrice*Quantity) desc

select 等級,RIGHT(等級,3) , count(等級)
from temp 
group by 等級

use northwind
SELECT CategoryName,'<' + 
             CASE CategoryName   
                WHEN 'Beverages' THEN N'飲料' 
                WHEN 'Condiments' THEN N'佐料'
                WHEN 'Confections' THEN N'甜食'
                WHEN 'Dairy Products' THEN N'日常品' 
                when 'Grains/Cereals' then N'穀粒'
                when 'Meat/Poultry' then N'肉'
                when 'Produce' then N'農產品'
                when 'Seafood' then N'海產'
                ELSE N'未分' 
             END + N'類>' AS 類別 
FROM Categories
ORDER BY 類別  desc



