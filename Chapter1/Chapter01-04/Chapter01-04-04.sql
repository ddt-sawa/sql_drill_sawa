﻿/*1-4 問4 アンケート集計テーブル(quest)から年齢(age列)が30際以上40歳未満の人の回答のみを取り出してみましょう。
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

/*
    name    | sex | prefecture
------------+-----+------------
 山田太郎   | 男  | 東京都
 江本修子   | 女  | 東京都
 有木守     | 男  | 千葉県
 南幸一     | 男  | 神奈川県
 根岸亜由美 | 女  | 千葉県
*/