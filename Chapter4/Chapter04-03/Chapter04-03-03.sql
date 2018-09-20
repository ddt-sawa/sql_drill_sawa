/*4-3 問3 書籍情報テーブル(books)のcategory_idの後方にsales列(INT型)を追加してみましょう。*/
--PostgresSQLでは追加位置の指定ができないので、特に指定せず最高尾に追加。

--変更するテーブル
ALTER TABLE

	--書籍情報テーブル
	books
	
--追加する内容
ADD 

	--sales列(INT型)
	sales INT
;

