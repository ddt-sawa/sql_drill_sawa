/*3-7 問4 以下は、書籍情報テーブル(books)上で分類IDが「Z9999(未分類)」であるか、NULLである書籍を削除する
SQL命令ですが、誤りが2点あります。誤りを指摘してください。*/

--①FROMがない
--DELETE

--削除対象
DELETE FROM

 	--書籍情報テーブル
	books
	
--削除条件
WHERE

	--分類IDが「Z9999(未分類)
	category_id = 'Z9999'
	
--②ANDではなくOR
--AND

--または
OR

	--分類IDがNULL
	category_id IS NULL 
;
	
/*
DELETE 2
*/