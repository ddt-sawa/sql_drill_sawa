/*1-8 問2 アンケート回答テーブル(quest)から回答日時が新しいものを先頭から10件取り出してみましょう。
以下の空欄を埋めて、SQL命令を完成させてください。取得列は、name、answer1,answer2列とします。*/

--取得列
SELECT

	--名前
	name,
	
	--回答1
	answer1,
	
	--回答2
	answer2
	
--テーブル
FROM 

	--アンケート回答テーブル
	quest

--ソート方法
ORDER BY

	--回答日時について降順
	answered DESC

--取得行数
LIMIT

	--10行
	10
	
--取得行の先頭行番号
OFFSET

	--1行目から
	0
;
