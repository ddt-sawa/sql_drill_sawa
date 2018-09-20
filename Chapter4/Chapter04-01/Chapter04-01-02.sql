/*4-1 問2 注文明細テーブル(order_desc)を新規に作成してみましょう。
以下の空欄を埋めて、SQL命令を完成させてください。*/

--作成するテーブル名
CREATE TABLE

	--注文明細テーブル
	OrderDetailTable
	(
		--注文ID（整数、NULL禁止）
		ORDER_ID INT NOT NULL,
		
		--商品ID(固定長10文字)
		PRODUCT_ID CHAR(10),
		
		--注文数(整数)
		ORDER_Quantity INT,
		
		--主キーを注文IDと商品IDに設定
		PRIMARY KEY (ORDER_ID, PRODUCT_ID)
	
	)
;
