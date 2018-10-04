﻿/*1-10 問4 書籍情報テーブル(books)で、出版社ごとの書籍価格の平均値を求めてみましょう。
その際、取り出す列名はそれぞれ「出版社」「価格平均」とします。*/

--取得列
SELECT

	--出版社
	publish AS 出版社,

	--価格平均
	AVG(price) AS 価格平均
	
--テーブル
FROM 

	--書籍テーブル
	books

--グループ化キー
GROUP BY

	--出版社
	publish
;

/*
    出版社    |       価格平均
--------------+-----------------------
 日経BP       | 2433.3333333333333333
 秀和システム | 2400.0000000000000000
 翔泳社       | 3150.0000000000000000
 山田出版     | 2157.1428571428571429
*/