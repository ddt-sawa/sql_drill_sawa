/*1-4 問8 以下は書籍情報テーブル(books)から価格(price列)が5000円未満の書籍情報のみを取り出すためのSQL命令です。
(取り出す列はtitle, publish, price列とします)。SQL命令に含まれる誤りを2つ指摘してください。*/

--①列名の区切り子としてカンマがない、②5000円未満ではなく以下になっている
--SELECT ①title publish price FROM books WHERE price ②<= 5000;

--取得列
SELECT 

	--①列名の区切り子としてカンマがない、
	--title publish price
	
	--書籍名、出版社名、価格
	title, publish, price 
	
--参照範囲	
FROM

	--書籍情報テーブル
	books 
	
--取得条件	
WHERE 

	--②5000円未満ではなく以下になっている
	--price<= 5000
	
	--価格が5000未満
	price < 5000
;
