﻿/*1-12 問2 アンケート回答テーブル(quest)から都道府県ごとに男性回答者のみの年齢の最高値を求め、
60より大きい行のみを取り出してみましょう。*/

--取得列
SELECT

	--都道府県
	prefecture,
	
	--都道府県ごとの男性回答者の最高年齢
	MAX(age)
	
--テーブル
FROM 

	--アンケート回答テーブル
	quest

--条件
WHERE

    sex = '男'
	
--グループ化のキー
GROUP BY

	--都道府県
	prefecture
	
--グループ化結果に対する条件
HAVING

	--最高年齢が60歳以上
	MAX(age) > 60 
;

/*
 prefecture | max
------------+-----
 茨城県     |  64
*/