/*1-5 問1 著者情報テーブル(author)から名前が「山田」で始まる著者の情報を取り出してみましょう。
取り出す対象は全列であるものとします。*/

--取得列
SELECT 

	--全列
	* 
	
--参照範囲
FROM 

	--著者情報テーブル
	author
	
--取得条件	
WHERE 

	--名前が山田から始まる
	name LIKE '山田%'
;
