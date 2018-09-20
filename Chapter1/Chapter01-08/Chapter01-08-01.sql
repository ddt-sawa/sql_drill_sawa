/*1-8 問1 書籍情報テーブル(books)から刊行日が新しいものを3件目から5件分だけ取り出してみましょう
取得列は、title,publish_date列とします。以下の空欄を埋めて、SQL命令を完成させてください。*/

--取得列
SELECT

	--書籍名
	title,
	
	--刊行日
	publish_date
	
--テーブル
FROM 

	--書籍情報テーブル
	books

--ソート方法
ORDER BY

	--刊行日について降順
	publish_date DESC

--取得行数
LIMIT

	--5行
	5
	
--先頭行番号
OFFSET

	--3行目から
	2
;

