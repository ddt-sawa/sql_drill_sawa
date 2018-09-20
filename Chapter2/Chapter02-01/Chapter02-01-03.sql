/*2-1 問3 店舗テーブル(shop)と月間売りあげテーブル(sales)から2012年の全売上高を、
売上高の低い順に出力してみましょう。*/

--取得列
SELECT

	--店舗名
	shopTable.s_name,
	
	--売り上げ
	SUM(salesTable.s_value)
	
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

    --2012年全売上
	salesTable.s_date BETWEEN '2012-01' AND '2012-12'
	
--グループ化キー
GROUP BY 	
	
    --店舗名
	shopTable.s_name
	
--ソート
ORDER BY

	--売上高について低い順
	SUM(salesTable.s_value) ASC
;
