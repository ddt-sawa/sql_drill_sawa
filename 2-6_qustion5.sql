/*2-6 問5 ユーザテーブル(usr)、アンケート回答テーブル(quest)それぞれに含まれる
ユーザ氏名を比較し、双方に含まれるデータのみを取り出してみましょう。*/

--取得列
SELECT

	--ユーザテーブルから姓と名
	UserTable.l_name || UserTable.f_name AS 氏名
	

--参照範囲
FROM

	--ユーザテーブル
	usr AS UserTable
	
--積集合を出力
INTERSECT

--取得列
SELECT

	--アンケート回答テーブルから氏名
	QuestTable.name AS 氏名
	

--参照範囲
FROM

	--アンケート回答テーブル
	quest AS QuestTable
;

	
