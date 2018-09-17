/*2-3 問4 以下は、書籍目次テーブル(contents)から現在のコンテンツコードと前のコンテンツコードを、
現在のコンテンツコードについて昇順で取り出すためのSQLですが、誤りが2点あります。
誤りを指摘してください。*/

--取得列
SELECT

	--ひとつ前に参照したコンテンツコード
	PreviousTable.c_id AS 前のページ,
	
	--現在参照中のコンテンツコード
	CurrentTable.c_id AS 現在のページ
	
--参照テーブル
FROM

	--現在のコンテンツコードを取り出すテーブル
	contents AS CurrentTable

--①内部結合なので、OUTER JOINは使えない
--OUTER JOIN

--自己結合を行う
INNER JOIN

	--前のコンテンツコードを取り出すテーブル
	contents AS PreviousTable
	
--結合列
ON

	--②<>ではなく=
	--PastTable.next_id = CurrentTable.c_id 

	--前のコンテンツテーブルにおける次回コンテンツコードと、現在のコンテンツテーブルにおけるコンテンツコード
	PreviousTable.next_id = CurrentTable.c_id 

--ソート		
ORDER BY

	--現在のコンテンツコードに関して昇順
	CurrentTable.c_id
;
