SELECT [�Ȥ�W��],[�a�}],[�q��]
FROM [dbo].[�Ȥ�]

SELECT  ���u.*
FROM ���u
WHERE ([���Τ�] Between '1/1/2018' And '12/31/2018');

SELECT �q��.*
FROM �q��
WHERE (((�q��.[�b��(g)])>200));

SELECT �q��.*
FROM �q��
WHERE (((�q��.[�b��(g)]) Between 200 And 500));

SELECT ���~.*
FROM ���~
WHERE (((���~.���~�W��) Like '%����%'));

SELECT ���~.*
FROM ���~
WHERE (((���~.���~�W��) Not Like '%����%'));

SELECT ���~.*
FROM ���~
WHERE (((���~.���~�W��) Like '%����%')) AND ((���~.���a) Like '����');

SELECT Sum(�q��.�`��) AS �`�����`�p
FROM �q��;

SELECT [�q��s��],[���],[�b��(g)],[�`��]
FROM �q��
ORDER BY �q��.�`��;

SELECT ���~.*
FROM ���~
WHERE (((���~.[���(100g)]) In (100,1000)))
ORDER BY [�s�f�q] DESC;

