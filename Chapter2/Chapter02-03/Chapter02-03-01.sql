/* 2-3 問1 書籍目次テーブル(contents)から現在のコンテンツコードと前のコンテンツコードを、
現在のコンテンツコードについて昇順で取り出してみましょう。以下の空欄を埋めて、SQL命令を完成させて下さい。*/

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

--自己結合を行う
INNER JOIN

	--前のコンテンツコードを取り出すテーブル
	contents AS PreviousTable
	
--結合列
ON

	--前のコンテンツテーブルにおける次回コンテンツコードと、現在のコンテンツテーブルにおけるコンテンツコード
	PreviousTable.next_id = CurrentTable.c_id 

--ソート		
ORDER BY

	--現在のコンテンツコードに関して昇順
	CurrentTable.c_id
;
