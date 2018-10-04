/*3-4 問1 書籍情報テーブルを(books)上、出版社を「山田出版」から「WINGS出版」に変更してみましょう。
空欄を埋めて、SQL命令を完成させて下さい。*/

--更新対象
UPDATE

	--書籍情報テーブル
	books

--更新内容	
SET

	--出版社を「WINGS出版」に変更
	publish = 'WINGS出版'
	
--更新条件
WHERE

	--出版社が「山田出版」
	publish = '山田出版'
;

/*
UPDATE 7
*/