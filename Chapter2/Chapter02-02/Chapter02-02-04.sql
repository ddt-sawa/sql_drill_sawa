﻿/*2-2 問4 社員テーブルと(employee)とタイムカードテーブル(time_card)を結合し、社員ごとの勤務時間平均を、平均時間の多い順に出力してみましょう。
その際、タイムカードへの記録がない社員の情報についても出力することにします。出力列は、社員氏名、勤務時間平均です。*/

--取得列
SELECT

	--社員テーブルの姓
	EmployeeTable.l_name,
	
	--社員テーブルの名
	EmployeeTable.f_name,
	
	--勤務時間平均
	AVG(TimeTable.work_time) AS 勤務時間平均

--参照テーブル
FROM

	--社員テーブル
	employee AS EmployeeTable
	
--左外部結合を行うテーブル
LEFT JOIN

	--タイムカードテーブル
	time_card AS TimeTable
	
--結合する列
ON

	--社員ID
	EmployeeTable.s_id = TimeTable.s_id
	
--グループ化のキー
GROUP BY

	--社員テーブルの姓
	EmployeeTable.l_name,
	
	--社員テーブルの名
	EmployeeTable.f_name

--ソート
ORDER BY
	
	--勤務平均時間の長い順
	AVG(TimeTable.work_time)
;

/*
 l_name | f_name |    勤務時間平均
--------+--------+--------------------
 加藤   | 昭雄   | 8.4761904761904762
 清水   | 春子   | 8.4761904761904762
 津村   | 知美   | 8.4761904761904762
 藤井   | 雄太   | 8.4761904761904762
 田辺   | 正一   | 8.4761904761904762
 戸川   | よしみ | 8.4761904761904762
 木村   | 一郎   | 8.5000000000000000
 中澤   | 康代   | 8.5000000000000000
 藤岡   | 幸太郎 | 8.5000000000000000
 大門   | 一郎   | 8.5000000000000000
 野上   | 利江   | 8.5238095238095238
 田中   | 真由子 | 8.5238095238095238
 葉山   | 俊輔   | 8.5238095238095238
 川口   | 裕子   | 8.5476190476190476
 神田   | 佐知子 | 8.5476190476190476
 寺岡   | 陽一   |
 山田   | 奈美   |
 妹尾   | 春樹   |
 遠山   | 真一   |
 速水   | 和幸   |
 上田   | 一也   |
 西     | 雄一   |
 近田   | 晃子   |
 佐藤   | 智子   |
 相沢   | 聡     |
 新渡戸 | 康治   |
*/
