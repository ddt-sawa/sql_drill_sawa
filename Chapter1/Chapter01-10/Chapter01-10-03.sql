﻿/*1-10 問3 ユーザテーブル(usr)から都道府県別のユーザ数を求めてみましょう。
なお、取り出す列の別名は、それぞれ「都道府県名」「ユーザ数」とします。*/

--取得列
SELECT

	--都道府県名
	prefecture AS 都道府県名,

	--ユーザ数
	Count(*) AS ユーザ数
	
--テーブル
FROM 

	--ユーザテーブル
	usr

--グループ化キー
GROUP BY

	--都道府県名
	prefecture
;

/*
 都道府県名 | ユーザ数
------------+----------
 茨城県     |        4
 千葉県     |        4
 埼玉県     |        2
 神奈川県   |        4
 静岡県     |        2
 東京都     |        3
 栃木県     |        2
*/
