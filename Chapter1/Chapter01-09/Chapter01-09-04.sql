/*1-9 問4 書籍情報テーブル(books)で、出版社ごとの書籍価格の最大値を求めてみましょう。*/

--取得列
SELECT

	--出版社
	publish,

	--書籍価格の最大値
	MAX(price)
	
--テーブル
FROM 

	--書籍情報テーブル
	books

--グループ化キー
GROUP BY

	--出版社
	publish
;

