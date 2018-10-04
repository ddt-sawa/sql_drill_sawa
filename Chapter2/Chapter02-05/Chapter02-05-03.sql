/*2-5 問3 店舗テーブル(shop)と月間売上テーブル(sales)から2012年12月の売上高が店舗売上平均(2012年12月の平均)
を下回っている店舗名とその売上高を挙げてみましょう。*/

--取得列
SELECT

	--店舗名
	ShopTable.s_name AS 店舗名,
	
	--売上高
	SalesTable.s_value AS 売上高

--参照範囲	
From

	--店舗テーブル
	shop AS ShopTable
	
--売上について情報を収集するので、右外側結合
RIGHT JOIN

	--月間売上テーブル
	sales AS SalesTable

--結合列	
ON 

	--店舗テーブルの店舗コードと、月間売上テーブルの店舗コード
	SalesTable.s_id = ShopTable.s_id

--条件	
WHERE

	--2012年12月
	SalesTable.s_date = '2012-12'
	
--かつ
AND 

	--売上が2012年12月の平均売上高を下回っている
	SalesTable.s_value < 
	
	--2012年12月の平均売上高を計算するサブクエリ
	(
		--選択列
		SELECT
		
			--平均売上
			AVG(SalesTable.s_value)
		
		--参照範囲
		FROM 
			
			--月間売上テーブル
			sales AS SalesTable
			
		--条件
		WHERE
		
			--2012年12月
			SalesTable.s_date = '2012-12'
	)	
		
;
		
/*
   店舗名   | 売上高
------------+--------
 東桜町店   |   9861
 北花町東店 |  10456
*/