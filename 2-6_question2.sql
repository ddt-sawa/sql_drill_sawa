/*2-6 問2 ユーザーテーブル(usr)とアンケート回答テーブル(quest)、それぞれに登録されているユーザ氏名を比較し、
ユーザテーブル(usr)にしか登録されていないもののみを取り出してみましょう。
以下の空欄を埋めて、SQL命令を完成させてください。*/

--取得列
SELECT

	--ユーザーテーブルから姓と名
	UserTable.l_name || UserTable.f_name AS 氏名
	
--参照範囲
FROM

	--ユーザテーブル
	usr AS UserTable
	
--差集合
EXCEPT

--取得列
SELECT

	--アンケート回答テーブルから氏名
	QuestTable.name AS 氏名

--参照範囲
FROM

	--アンケート回答テーブル
	quest AS QuestTable
;


