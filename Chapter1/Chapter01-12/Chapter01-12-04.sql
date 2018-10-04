﻿/*1-12 問4 書籍情報テーブル(books)から出版社、分類IDごとに登録数を求め、登録数が3冊未満の情報だけを取り出してみましょう。*/

--取得列
SELECT

	--出版社
	publish,
	
	--分類ID
	category_id,
	
	--登録数
	count(*) 
	
--テーブル
FROM 

	--書籍情報テーブル
	books

--グループ化のキー
GROUP BY

	--出版社
	publish,
	
	--分類ID
	category_id
	
--グループ化結果に対する条件
HAVING

	--登録数が3冊未満
	Count(*) < 3  
;

/*
   publish    | category_id | count
--------------+-------------+-------
 秀和システム | J4444       |     1
 山田出版     | S2222       |     1
 山田出版     | P1111       |     1
 山田出版     | H9999       |     1
 山田出版     | A9999       |     1
 日経BP       | S2222       |     2
 翔泳社       | P1111       |     1
 翔泳社       | X3333       |     1
 日経BP       | X3333       |     1
 秀和システム | P1111       |     1
*/