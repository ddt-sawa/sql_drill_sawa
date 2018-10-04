/*2-1 問2 店舗テーブル(shop)と月間売上テーブル(sales)から2012年12月の売り上げを
売り上げの高い順に出力してみましょう。*/

--取得列
SELECT

	--店舗名
	shopTable.s_name,
	
	--売り上げ
	salesTable.s_value
	
--テーブル
FROM 

	--店舗テーブル
	shop AS shopTable 
	
--結合するテーブル
INNER JOIN 

	--月間売上テーブル
	sales AS salesTable

--結合
ON

	--両テーブルの店舗idにおいて結合を行う
	shopTable.s_id = salesTable.s_id

--条件
WHERE

    --2012年12月分
	salesTable.s_date = '2012-12'
	
--ソート
ORDER BY

	--売上高が高い順
	salesTable.s_value DESC
;

/*
    s_name    | s_value
--------------+---------
 北花町駅前店 |   11234
 三吉町店     |   11145
 北花町東店   |   10456
 東桜町店     |    9861
*/