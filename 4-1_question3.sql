/*4-1 問3 月間売上テーブル(sales)を新規に作成してみましょう。*/

--作成するテーブル名
CREATE TABLE

	--月間売上テーブル
	SalesTable
	(
		--店舗ID（固定長5文字、NULL禁止）
		SHOP_ID INT NOT NULL,
		
		--売上月(固定長7文字,NULL禁止)
		SALES_MONTH CHAR(7) NOT NULL,
		
		--売上(整数)
		SALES_VALUE INT,
		
		--主キーを店舗IDと売上月に設定
		PRIMARY KEY (SHOP_ID, SALES_MONTH)
	)
;
