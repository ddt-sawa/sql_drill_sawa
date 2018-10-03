﻿/*1-5 問5 以下は書籍情報テーブル(books)から名前が「社」で終わる出版社の情報だけを取り出すSQL命令ですが、
2点誤りがあります。誤りを指摘してください。取り出す列は、title列とします。*/

--取得列
SELECT 

	--①単列なのでカンマ不要
	--title,
	
	--書名
	title

--参照範囲
FROM 

	--書籍情報テーブル
	books 
	
--取得条件	
WHERE 

	--②前文字は1文字とは限らないので'_'ではなく'%'
	--②'_社'	
	
	--出版社名が社で終わる
	publish LIKE '%社'
;

/*
  title
----------
 PEAR入門
 XML辞典
*/