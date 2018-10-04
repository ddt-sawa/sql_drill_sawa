/*4-3 問2 月間売上テーブル(sales)を主キーのない状態でまず新規作成してみましょう。
これに対して、後から主キーを追加します。以下の空欄を埋めて、SQL命令を完成させてください。*/

--テーブルを作成
CREATE TABLE

	--月間売上テーブル
	SalesTable
	(
		--店舗ID(固定長5文字、NULL禁止)
		SHOP_ID CHAR(5) NOT NULL,
	
		--売上月(日付型,NULL禁止)
		SALES_DATE DATE NOT NULL,
		
		--売上額(整数,デフォルト値0)
		SALES_VALUE INT DEFAULT 0		
	) 
;

/*
CREATE TABLE
*/

--変更を加えるテーブル
ALTER TABLE

	--月間売上テーブル
	SalesTable
	
--追加内容
ADD

	--主キーを店舗IDと売上月に設定
	PRIMARY KEY(SHOP_ID,SALES_DATE)
;

/*
ALTER TABLE
*/