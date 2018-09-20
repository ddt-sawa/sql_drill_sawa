/*1-3 問4 以下は、社員テーブル(employee)から重複なしの役職を取り出すためのSQL命令ですが、
2点誤りがあります。誤りを指摘してください。*/

--①ALLではなくDISTINCT、②重複なし役職に部門IDは不要
--SELECT ①ALL class, ②depart_id FROM employee;

--①ALLではなくDISTINCT
--SELECT ALL 

--取得列(重複なし)
SELECT DISTINCT 

	--②部門IDは不要
	--class, depart_id
	
	--役職
	class 
	
--参照範囲	
FROM 
	
	--社員テーブル
	employee
;
