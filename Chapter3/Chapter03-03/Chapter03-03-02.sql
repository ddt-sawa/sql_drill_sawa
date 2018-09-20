/*3-3 問2 店舗テーブル(shop)からすべての店舗コードを抜き出し、月間売上テーブル(sales)に対して挿入してみましょう。
その際、売上対象年月には今日の日付(YYYY-MM)を、売上高には0を固定値でセットするものとします。*/

--挿入を行う対象
INSERT INTO

	--月間売上テーブル
	sales
	
	--挿入対象
	(
		--店舗コード
		s_id,
		
		--売上対象年月
		s_date,
		
		--売上高
		s_value
	)
	
--挿入値
SELECT
		
		--店舗コードには店舗テーブルの値を代入
		ShopTable.s_id,
		
		--売上対象年月には今月の日付
		TO_CHAR(CURRENT_TIMESTAMP, 'YYYY-MM'),
		
		--売上高には0
		0
	
--参照範囲
FROM

	--店舗テーブル
	shop AS ShopTable
	
;
		
