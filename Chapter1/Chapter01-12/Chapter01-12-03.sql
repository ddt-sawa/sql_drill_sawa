/*1-12 問3 著者-書籍情報テーブル(author_books)で、著者ごとの書籍数を求め、登録数が3冊以上の情報だけを取り出してみましょう。*/

--取得列
SELECT

--
	--登録数が3冊以上の著者の情報
	author_id,
	
	--その冊数
	count(isbn) 
	
--テーブル
FROM 

	--著者-書籍情報テーブル
	author_books

--グループ化のキー
GROUP BY

	--著者ID
	author_id
	
--グループ化結果に対する条件
HAVING

	--著者の登録数が3冊以上
	Count(isbn) >= 3  
;

/*
 author_id | count
-----------+-------
 Y0002     |     4
*/