SELECT [客戶名稱],[地址],[電話]
FROM [dbo].[客戶]

SELECT  員工.*
FROM 員工
WHERE ([雇用日] Between '1/1/2018' And '12/31/2018');

SELECT 訂單.*
FROM 訂單
WHERE (((訂單.[淨重(g)])>200));

SELECT 訂單.*
FROM 訂單
WHERE (((訂單.[淨重(g)]) Between 200 And 500));

SELECT 產品.*
FROM 產品
WHERE (((產品.產品名稱) Like '%長纖%'));

SELECT 產品.*
FROM 產品
WHERE (((產品.產品名稱) Not Like '%長纖%'));

SELECT 產品.*
FROM 產品
WHERE (((產品.產品名稱) Like '%長纖%')) AND ((產品.產地) Like '中國');

SELECT Sum(訂單.總價) AS 總價之總計
FROM 訂單;

SELECT [訂單編號],[日期],[淨重(g)],[總價]
FROM 訂單
ORDER BY 訂單.總價;

SELECT 產品.*
FROM 產品
WHERE (((產品.[單價(100g)]) In (100,1000)))
ORDER BY [存貨量] DESC;

