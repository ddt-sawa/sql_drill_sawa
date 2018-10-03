/*1-7 問1 書籍情報テーブル(books)から価格が2500〜3500円の範囲の書籍を価格が安い順に取り出してみましょう。*/

--取得列
SELECT 

	--書名
	title,  

	--価格
	price
		
--参照範囲	
FROM 

	--書籍情報テーブル
	books 
	
--取得条件	
WHERE 

	--価格が2500-3500
	price BETWEEN 2500 AND 3500 
	
--ソート
ORDER BY 

	--価格について昇順
	price ASC
; 

/*
      title      | price
-----------------+-------
 SQLリファレンス |  2500
 PEAR入門        |  3000
 PHP5サンプル集  |  3000
 XMLリファレンス |  3200
 XML辞典         |  3300
*/