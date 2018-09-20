/*2-5 問1 アンケート回答テーブルから回答者の平均年齢を超えている人の回答
(answer1,answer2列)を評価の低い順に取り出してみましょう。*/


--選択列
SELECT

	--評価
	answer1,
	
	--感想
	answer2

--参照範囲
FROM
 
	--アンケート回答テーブル
	quest
	
WHERE

	--年齢が回答者平均年齢を超えている
    age >
	 
	--回答者平均年齢を取得するサブクエリ
	(

	--取得する値
	SELECT
	
		--回答者平均年齢
		AVG(age)
		
	--参照範囲
	FROM
	
		--アンケート回答テーブル
		quest
    )
	
--ソート	
ORDER BY

	--評価の低い順
	answer1 ASC	
;

