﻿/*1-10 問5 以下は、アンケート回答テーブル(quest)から都道府県、性別ごとの評価平均を求めるためのSQL命令ですが、
2点誤りがあります。過ちを指摘してください。*/

--取得列
SELECT

	--都道府県
	prefecture,

	--性別
	sex,
	
	--①グループ化の際、グループ化キーと集計列以外の取得は不可
	--age,
	
	--②エイリアス宣言はISではなくAS
	--AVG(answer1) IS 評価平均 
	
	--②評価平均
	AVG(answer1) AS 評価平均 
	
--テーブル
FROM 

	--アンケート回収テーブル
	quest

--グループ化キー
GROUP BY

	--都道府県
	prefecture,
	
	--性別
	sex
;

/*
 prefecture | sex |        評価平均
------------+-----+------------------------
 千葉県     | 女  |     3.0000000000000000
 埼玉県     | 男  |     3.0000000000000000
 茨城県     | 男  |     2.5000000000000000
 茨城県     | 女  | 1.00000000000000000000
 神奈川県   | 女  |     2.0000000000000000
 東京都     | 男  |     1.6000000000000000
 神奈川県   | 男  |     2.5000000000000000
 千葉県     | 男  |     3.0000000000000000
 東京都     | 女  |     3.0000000000000000
*/