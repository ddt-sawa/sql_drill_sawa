/*4-1 問4 書籍情報テーブル(books)を新規に作成してみましょう。。*/

--作成するテーブル名
CREATE TABLE

	--書籍情報テーブル
	BooksTable
	(
		--書籍コード（固定長17文字、主キー）
		ISBN CHAR(17) PRIMARY KEY,
		
		--書籍名(可変長255文字)
		BOOK_TITLE VARCHAR(255),
		
		--価格(整数)
		BOOK_PRICE INT,
		
		--出版社名(可変長30文字)
		PUBLISHER_NAME VARCHAR(30),
		
		--刊行日(日付型)
		PUBLISH_DATE DATE,
		
		--分類ID(固定長5文字)
		CATEGORY_ID CHAR(5)
		
	)
;

/*
CREATE TABLE
*/
