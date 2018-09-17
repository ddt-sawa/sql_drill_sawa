/*1-11 問5 以下は、社員テーブル(employee)から部署、役職ごとに降順ソートした結果を出力するためのSQL命令ですが、
誤りが2点あります。誤りを指摘してください。*/

--取得列
SELECT

	--部署
	depart_id,
	
	--役職
	class,
	
	--①変数なので''は不要
	--CONCAT('l_name','f_name') AS 氏名
	
	--Postgres記法において、文字列を結合
	l_name || f_name AS 氏名
	
--テーブル
FROM 

	--社員テーブル
	employee

--ソート
ORDER BY

	--②ソート方法を明記していないので昇順になっている
	--depart_id,

	--部署について降順
	depart_id DESC,
	
	--役職について降順
	class DESC
;
