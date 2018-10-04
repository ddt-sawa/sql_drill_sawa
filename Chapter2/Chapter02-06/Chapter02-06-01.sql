/*2-6 問1 アンケート回答テーブル(quest)と社員テーブル(employee)から女性の氏名(カナ)だけを、
氏(カナ)・名(カナ)昇順で取り出してみましょう。なお、重複データがあっても、
そのまま出力するものとします。以下の空欄を埋めて、SQL命令を完成させてください。*/

--選択列
SELECT

	--アンケート回答から氏名(カナ)
	QuestTable.name_kana AS カナ


--参照範囲
FROM

	--アンケート回答テーブル
	quest AS QuestTable

--条件
WHERE

	--女性のみ
	sex = '女'

--重複を含め和集合を全て出力
UNION ALL

--取得列
SELECT

	--社員テーブルから氏名(カナ)
	EmployeeTable.l_name_kana || EmployeeTable.f_name_kana AS カナ
	
--参照範囲
FROM

	--社員テーブル
	employee AS EmployeeTable
	
--条件
Where

	--女性のみ
	EmployeeTable.sex = '2'

--ソート	
ORDER BY

	--1列目を昇順
	1
	
;

/*
      カナ
----------------
 イノウエマリ
 ウエハラハルカ
 エモトシュウコ
 オノヒロミ
 カワグチユウコ
 サトウトモコ
 シミズハルコ
 タナカマユコ
 チカダアキコ
 ツムラカズミ
 トガワヨシミ
 ナカザワヤスヨ
 ネギシアユミ
 ノガミリエ
 ヤマダナミ
*/