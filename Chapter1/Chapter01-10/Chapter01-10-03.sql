/*1-10 問3 ユーザテーブル(usr)から都道府県別のユーザ数を求めてみましょう。
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
