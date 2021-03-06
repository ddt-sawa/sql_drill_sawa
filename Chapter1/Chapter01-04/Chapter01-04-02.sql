﻿/*1-4 問2 書籍情報テーブル(books)から出版社が「日経BP」「翔泳社」である書籍情報だけを取り出してみましょう。
取り出す列は、isbn、title、publish列とします。*/

--取得列
SELECT 

	--ISBN
	isbn,

	--タイトル
	title, 

	--出版社
	publish 
	
--参照範囲	
FROM 

	--書籍情報テーブル
	books 
	
--取得条件	
WHERE 

	--出版社が日経BPか翔泳社
	publish IN ('日経BP', '翔泳社')
;

/*
       isbn        |      title      | publish
-------------------+-----------------+---------
 4-7981-0959-2     | PEAR入門        | 翔泳社
 4-8833-0000-1     | SQLリファレンス | 日経BP
 4-7981-0722-0     | XML辞典         | 翔泳社
 4-8833-0000-2     | SQLプチブック   | 日経BP
 4-8833-0000-3     | XMLリファレンス | 日経BP
*/