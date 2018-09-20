/*1-7 問1 書籍情報テーブル(books)から価格が2500〜3500円の範囲の書籍を価格が安い順に取り出してみましょう。*/

--取得列
SELECT 

	--書名、価格
	title, price 
		
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
