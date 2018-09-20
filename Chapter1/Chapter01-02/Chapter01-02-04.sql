/*1-2 問4 以下は書籍情報テーブル(books)からtitle列とpublish列とを取り出すためのSQL命令ですが、
2点誤りがあります。誤りを指摘してください。*/

--①SELECT命令末尾にSが付いている、②列の区切りとしてカンマが入力されていない
--①SELECTS title ②publish FROM books;

--①SELECT命令末尾にSが付いている
--SELECTS

--取得列
SELECT 


	--②列の区切りとしてカンマが入力されていない
	--title publish
	
	--タイトルと出版社
	title, publish

--参照範囲
FROM 

	--書籍情報テーブル
	books
;
