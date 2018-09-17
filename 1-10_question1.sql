/*1-10 問1 商品テーブル(product)からp_name,price列を価格が安い順に取り出してみましょう。
その際、p_name列に「商品名」、price列に「価格」という別名をつけます。
以下の空欄を埋めて、SQL命令を完成させてください。*/

--取得列
SELECT

	--商品名
	p_name AS 商品名,

	--価格
	price AS 価格
	
--テーブル
FROM 

	--商品テーブル
	product

--並び替え
ORDER BY

	--価格が安い順
	price ASC
;

