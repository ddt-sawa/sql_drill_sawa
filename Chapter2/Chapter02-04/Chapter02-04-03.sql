/*2-4 問3 注文書テーブル(order_main)、注文明細テーブル(order_desc)、ユーザーテーブル(usr)、商品テーブル(product)を結合し、
未納の注文について、発注日、注文コード、商品コード昇順に注文情報を出力してみましょう。出力列の別名は、
発注日、注文コード、利用者氏名、商品名、商品単価、購入数とします。*/

--取得列
SELECT

	--注文書テーブルにおけるorder_dateを発注日とする
	OrderTable.order_date AS 発注日,
	
	--注文書テーブルにおけるpo_idを注文コードとする
	OrderTable.order_date AS 注文コード,
	
	--ユーザーテーブルにおける l_name + f_name を利用者氏名とする
	UserTable.l_name || UserTable.f_name AS 利用者氏名,
	
	--商品テーブルにおけるp_nameを商品名とする
	ProductTable.p_name AS 商品名,
	
	--商品テーブルにおけるpriceを商品単価とする
	ProductTable.price AS 商品単価,
	
	--注文明細テーブルにおけるquantityを購入数とする
	DetailsTable.quantity AS 購入数


--参照テーブル
FROM

	--注文書テーブルと注文明細テーブルを結合する
	(
		--注文書テーブルとユーザテーブルを結合する
		(
			--注文書テーブル
			order_main AS OrderTable
		
		--NULL値を考慮しないので、内部結合を行う
		INNER JOIN
		
			--ユーザテーブル
			usr As UserTable
		
		--結合列
		ON
		
			--注文書テーブルのユーザーidとユーザーテーブルのユーザーid
			OrderTable.user_id = UserTable.user_id
		)
		
	--NULL値を考慮しないので、内部結合を行う
	INNER JOIN
	
		--注文明細テーブル
		order_desc AS DetailsTable
	
	--結合列	
	ON
	
		--注文書テーブルの注文番号と、注文明細テーブルの注文番号
		OrderTable.po_id = DetailsTable.po_id
	)

--NULL値を考慮しないので、内部結合を行う
LEFT JOIN

	--商品テーブル
	product As ProductTable

--結合列
ON
	--注文明細テーブルの商品コードと、商品テーブルの商品コード
   DetailsTable.p_id = ProductTable.p_id
	
--条件	
WHERE 

	--配達日列に日付が入力されていない
	OrderTable.delivery_date IS  NULL
	
--ソート
ORDER BY

	--発注日について昇順
	OrderTable.order_date ASC,
	
	--注文コードについて昇順
	OrderTable.po_id ASC,
	
	--商品コードについて昇順
	DetailsTable.p_id ASC
;
