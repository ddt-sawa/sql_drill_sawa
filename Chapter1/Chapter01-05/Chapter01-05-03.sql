/*1-5 問3 書籍情報テーブル(books)から書名が「SQL〇〇」(〇は1文字)である書籍の情報を取り出してみましょう。
取り出す列は、isbn,title,price列とします。*/

--取得列
SELECT 

	--書籍名
	title 
	
--参照範囲	
FROM 

	--書籍情報テーブル
	books 
		
--取得条件
WHERE 


	--書籍名がSQL〇〇
	title LIKE 'SQL__'
;
