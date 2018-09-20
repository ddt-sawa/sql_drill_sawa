/*2-2 問4 社員テーブルと(employee)とタイムカードテーブル(time_card)を結合し、社員ごとの勤務時間平均を、平均時間の多い順に出力してみましょう。
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
