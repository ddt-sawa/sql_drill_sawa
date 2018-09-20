/*4-2 問2 注文書テーブル(order_main)上に、発注日、納品日をキーにした複合インデックスを作成してみましょう。
以下の空欄を埋めて、SQL命令を完成させてください。*/

--作成するインデックス
CREATE INDEX

	--注文書インデックス
	ind_order
	
--対象列
ON

	--注文書テーブルの
	order_main
	
	(
		--発注日と納品日
		order_date, delivery_date	
	)
;
