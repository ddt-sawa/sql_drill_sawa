﻿/*3-8 問3 店舗テーブル(shop)に登録されていない店舗に関する情報を、月間売上テーブル(sales)から削除してください。*/

--削除対象
DELETE FROM

	--月間売上テーブル
	sales
	
--削除条件
WHERE

	--店舗IDが店舗テーブルに存在しない
	s_id NOT IN
	
		--店舗テーブルに存在する店舗IDを返却するサブクエリ
		(
			--取得範囲
			SELECT
			
				--店舗ID
				shop.s_id
				
			--対象範囲
			FROM
			
				--店舗テーブル
				shop
		)
		
;

/*
DELETE 2
*/
	
