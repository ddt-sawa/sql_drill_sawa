/*2-4 問2 書籍目次テーブル(contents)から前後のコンテンツを取り出してみましょう。
なお、取り出す列は別名として「前コンテンツ名」「現コンテンツ名」「次コンテンツ名」として、
現ページのコンテンツコードについて昇順に並べるものとします。以下の空欄を埋めて、
SQL命令を完成させましょう。*/

--取得列
SELECT

	--前コンテンツ
	PreviousTable.c_title AS 前コンテンツ名,
	
	--現コンテンツ
	CurrentTable.c_title AS 現コンテンツ名,
	
	--次コンテンツ
	NextTable.c_title AS 次コンテンツ名

--テーブル
FROM

	--前コンテンツ取得用テーブルと現コンテンツ取得用テーブルを結合
	(
		--前コンテンツテーブル
		contents AS PreviousTable
	
	--前コンテンツがNULLの可能性があるので右外部結合を行う
	RIGHT JOIN
	
		--現コンテンツテーブル
		contents AS CurrentTable
	
	--結合列	
	ON 
	
		--前コンテンツテーブルの次コンテンツコードと、現コンテンツテーブルの現コンテンツコード
		PreviousTable.next_id = CurrentTable.c_id
	)

--次コンテンツがNULLの可能性があるので、左外部結合を行う
LEFT JOIN

	--次コンテンツテーブル
	contents As NextTable

--結合列	
ON

	--現コンテンツテーブルの次コンテンツコードと、次コンテンツテーブルの現コンテンツコード
		CurrentTable.next_id = NextTable.c_id
		
--ソート
ORDER BY

	--現コンテンツコードについて昇順
	CurrentTable.c_id ASC

;

