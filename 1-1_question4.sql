/*1-1 問4 以下は、書籍情報テーブル(books)からすべての列を取り出すためのSQL命令ですが、
2点誤りがあります。誤りを指摘してください。 */

--①アスタリスクがプラスになっている、②セミコロンがコロンになっている
--SELECT ①+ FROM books ②:

--取得列
SELECT

	--①アスタリスクがプラスになっている
	+
	
	--全列
	* 

--参照範囲	
FROM 

	--書籍情報テーブル
	books

--②セミコロンがコロンになっている
--:
;
