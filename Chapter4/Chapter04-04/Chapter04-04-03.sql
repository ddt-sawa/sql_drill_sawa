/*4-4 問3 著者情報テーブル(author)上、
著者名の定義を「VARCHAR(100)デフォルト値は空文字列」に変更してみましょう。*/

--変更を加えるテーブル
ALTER TABLE

	--著者情報テーブル
	author
	
--列の定義を変更
ALTER COLUMN

	--著者名のデータ型をVARCHAR(100)に変更
	name TYPE VARCHAR(100),
	
--列の定義を変更
ALTER COLUMN

	--著者名のデフォルト値を空文字列に変更
	name SET DEFAULT ''
;

/*
ALTER TABLE
*/