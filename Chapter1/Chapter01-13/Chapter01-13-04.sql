﻿/*1-13 問4 著者-書籍情報テーブル(author_books)で、著者ごとの書籍数を求めてみましょう。
その際、書籍数が4冊以上の著者は「多い」、2冊以上4冊未満の著者は「普通」、2冊未満の著者は「少ない」と出力します。
また、出力列の名前は先頭から「著者ID」「カウント数」「評価」とします。*/

--取得列
SELECT

	--著者ID
	author_id,
		
	--カウント数
	Count(*) AS カウント数,
	
	
	--条件分岐
	CASE 
	
		--カウント数が4冊以上の場合「多い」
		WHEN Count(*) >= 4 THEN '多い'
		
		--そうでなく2件以上の場合「普通」
		WHEN Count(*) >= 2 THEN '普通'
		
		--それ以外の場合「少ない」
		ELSE '少ない'
	
	--を評価として出力
	END AS 評価
	
--テーブル
FROM 

	--著者-書籍情報テーブル
	author_books

--グループ化のキー
GROUP BY

	--著者
	author_id
;

/*
 author_id | カウント数 |  評価
-----------+------------+--------
 A0001     |          1 | 少ない
 T0001     |          1 | 少ない
 Y0001     |          2 | 普通
 S0001     |          1 | 少ない
 K0001     |          1 | 少ない
 Y0002     |          4 | 多い
 M0001     |          1 | 少ない
*/
