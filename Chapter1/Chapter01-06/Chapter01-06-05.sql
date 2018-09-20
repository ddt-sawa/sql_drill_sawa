/*1-6 問5 以下は、書籍情報テーブルから出版社(publish列)が「秀和システム」または「日経BP」であり、かつ、
価格(price列)が3000円未満の書籍を取り出すためのSQL命令ですが、2点誤りがあります。誤りを指摘してください。*/

--①「または」なのでANDではなくOR、②「かつ」なのでORではなくANDであり、それに合わせて()が必要になる
--SELECT isbn, title FROM books WHERE publish = '秀和システム' ①AND publish = '日経BP' OR price < 3000;

--取得列
SELECT 

	--isbn、書籍名
	isbn, title 
	
--参照範囲	
FROM 

	--書籍情報テーブル
	books 
	
--取得条件	
WHERE 

	--出版社名が秀和システム
	(publish = '秀和システム' 
	
	--①「または」なのでANDではなくOR
	--AND
	
	--または
	OR 
	
	--日経BP
	publish = '日経BP') 
	
	--②かつなのでANDであり、それに合わせて前条件に()が必要になる
	--OR
	
	--かつ
	AND 
	
	--価格が3000円未満
	price < 3000
;
