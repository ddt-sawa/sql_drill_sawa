/*1-12 問4 書籍情報テーブル(books)から出版社、分類IDごとに登録数を求め、登録数が3冊未満の情報だけを取り出してみましょう。*/

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
