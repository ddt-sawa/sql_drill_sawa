/*1-4 問1 アンケート回答テーブル(quest)から20歳以上の人間による回答だけを取り出してみましょう。
なお、取り出すのはanswer1、answer2列だけとします。*/

--取得列
SELECT 

	--評価、感想列
	answer1, answer2 
	
--参照範囲	
FROM 

	--アンケート回答テーブル
	quest 
	
--取得条件	
WHERE 

	--20歳以上
	age >= 20;
