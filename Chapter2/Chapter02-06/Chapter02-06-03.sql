/*2-6 問3 ユーザーテーブル(usr)とアンケート回答(quest)からそれぞれ千葉県に住んでいる人間だけを取り出し、
結果を統合してみましょう。その際、重複データを取り除くものとし、かつ氏名（カナ）について降順で並び替えるものとします。*/

--取得列
SELECT

	--ユーザーテーブルから姓と名
	UserTable.l_name || UserTable.f_name AS 氏名
	
--参照範囲
FROM

	--ユーザテーブル
	usr AS UserTable

--条件
WHERE

	--千葉県在住
	UserTable.prefecture = '千葉県'
	
--和集合(重複なし)
EXCEPT

--取得列
SELECT

	--アンケート回答テーブルから氏名
	QuestTable.name AS 氏名

--参照範囲
FROM

	--アンケート回答テーブル
	quest AS QuestTable
	
--条件
WHERE

	--千葉県在住
	QuestTable.prefecture = '千葉県'
	

--ソート
ORDER BY

	--氏名について降順
	1 DESC
	
;


