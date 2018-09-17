/*1-4 問2 書籍情報テーブル(books)から出版社が「日経BP」「翔泳社」である書籍情報だけを取り出してみましょう。
取り出す列は、isbn、title、publish列とします。*/

--取得列
SELECT 

	--ISBN、タイトル、出版社
	isbn, title, publish 
	
--参照範囲	
FROM 

	--書籍情報テーブル
	books 
	
--取得条件	
WHERE 

	--出版社が日経BPか翔泳社
	publish IN ('日経BP', '翔泳社')
;
