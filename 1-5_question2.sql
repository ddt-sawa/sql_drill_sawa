/*1-5 問2 アンケート回答テーブルから名前が「子」で終わらない人の情報だけを取り出してみましょう。
取り出す列は、name列のみとします。*/

--取得列
SELECT 

	--名前
	name 
	
--参照範囲	
FROM 

	--アンケート回答テーブル
	quest 
	
--取得条件
WHERE 

	--名前が子で終わらない
	name NOT LIKE '%子'
;