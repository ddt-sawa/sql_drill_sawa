/*2-3 問2 メニューテーブル(menu)からそれぞれのメニューに対応する親メニュー名を、
メニューコードについて昇順に取り出してみましょう。以下の空欄を埋めて、SQL文を完成させてください。*/

--取得列
SELECT

	--メニューコード
	CurrentTable.page_id AS メニュー名,
	
	--上記に対する親メニュー名
	ParentTable.page_id As 親メニュー名

--参照テーブル	
FROM

	--メニューコードを取り出す用テーブル
	menu AS CurrentTable
	
--自己結合を行う
INNER JOIN

	--親メニュー名を取り出す用テーブル
	menu AS ParentTable

--結合列
ON

	--メニューコード用テーブルの親メニュー名と、親メニュー名用テーブルのメニューコード
	CurrentTable.parent = ParentTable.page_id
	
--ソート
ORDER BY 

	--メニューコードについて昇順
	CurrentTable.page_id ASC
;


/*
 メニュー名 | 親メニュー名
------------+--------------
 B0001      | A0001
 B0002      | B0001
 B0003      | B0001
 B0004      | B0001
 C0001      | A0001
 C0002      | C0001
 C0003      | C0001
 C0004      | C0001
 C0005      | C0001
 D0001      | A0001
 D0002      | D0001
 D0003      | D0001
 D0004      | D0001
*/