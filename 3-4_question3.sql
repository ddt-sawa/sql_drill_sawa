/*3-4 問3 価格改定に伴い,商品テーブル(product)に登録されている全商品を10%値上げすることになりました。
対応するためのSQL命令を記述してみましょう。*/

--更新対象
UPDATE

	--商品テーブル
	product
	

--更新内容	
SET

	--商品単価を10%値上げ
	price = price * 1.10
;
