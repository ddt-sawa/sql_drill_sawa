/*1-4 問7 アンケート集計テーブル(quest)から感想欄が未定義(NULL値)でない情報だけを取り出してみましょう。
取り出す列は、answer2列のみとします。*/

--取得列
SELECT 

	--感想
	answer2 
	
--参照範囲	
FROM 

	--アンケート集計テーブル
	quest
	
--取得条件	
WHERE 

	--評価欄が未定義でない
	answer2 IS NOT NULL
;
