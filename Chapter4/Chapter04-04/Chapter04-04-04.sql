/*4-4 問4 以下は、アクセス記録テーブル(access_log)に対して、既存のreferer列の定義を
「データ型VARCHAR(200)、NULL値を許可」で置き換えるためのSQL命令ですが、
2点誤りがあります。誤りを指摘してください。*/

--変更を加えるテーブル
ALTER TABLE

	--アクセス記録テーブル
	access_log
	
	
--①WITHは不要
--MODIFY WITH

--MODIFY
	--②カンマは不要
	--referer,VARCHAR(100),NULL
	
	--以下、PostgresSQLでの表記
	
--列の定義を変更
ALTER COLUMN

	--参照元URLのデータ型をVARCHAR(200)に変更
	referer TYPE VARCHAR(200),
	
--列の定義を変更
ALTER COLUMN

	--参照元URLのNULL値を許可
	referer DROP NOT NULL
;

/*
ALTER TABLE
*/