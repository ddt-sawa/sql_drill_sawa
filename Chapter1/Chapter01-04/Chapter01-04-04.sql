/*1-4 問4 アンケート集計テーブル(quest)から年齢(age列)が30際以上40歳未満の人の回答のみを取り出してみましょう。
取り出す列は、name、answer1、answer2列とします。*/

--取得列
SELECT 

	--名前
	name,

	--性別
	sex, 

	--都道府県
	prefecture 
	
--参照範囲
FROM 

	--アンケート集計テーブル
	quest 
	
--取得条件	
WHERE 

	--年齢が30-39歳
	age BETWEEN 30 AND 39
;
