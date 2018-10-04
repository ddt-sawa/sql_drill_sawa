﻿/*3-4 問1 書籍情報テーブルを(books)を、以下の要領で一括更新したいと思います。空欄を埋めて、
正しいSQL命令を完成させてみましょう。
・ISBNコードの先頭に、固定値で「ISBN」を追加
・消費税込みの価格情報を、税抜き価格に変更*/

--更新対象
UPDATE

	--書籍情報テーブル
	books

--更新内容	
SET

	--ISBNコードの先頭に、固定値で「ISBN」を追加
	isbn = 'ISBN' || isbn ,
	
	
	--消費税込みの価格情報を、税抜き価格に変更
	price = price / 1.08

;

/*
UPDATE 15
*/