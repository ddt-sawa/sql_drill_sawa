/*1-6 問3 アンケート回答テーブル(quest)から感想欄が空でないものを取り出してみましょう。
取り出す列はanswer2列のみとします。*/

--取得列
SELECT 

	--評価
	answer2 
	
--参照範囲	
FROM 

	--アンケート回答テーブル
	quest 
	
--取得条件	
WHERE 

	--評価が空文字でない
	answer2 <> '' 
	
	--かつ
	AND 
	
	--評価がNULLでない
	answer2 IS NOT NULL
;
