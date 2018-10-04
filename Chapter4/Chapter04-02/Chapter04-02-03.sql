/*4-2 問3 商品テーブル(product)上に商品名をキーにしたインデックスを作成してみましょう。
インデックス名はind_productとします。*/


--作成するインデックス
CREATE INDEX

	--商品テーブルインデックス
	ind_product
	
--対象列
ON

	--商品テーブルの
	product
	
	(
		--商品名
		p_name	
	)
;

/*
CREATE INDEX
*/