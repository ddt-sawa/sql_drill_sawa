/*2-4 問1 社員テーブル(employee)と所属部署テーブル(depart)、タイムカードテーブル(time_card)を結合し、
社員コード'DA00001'における2012年12月分の勤務時間を日付について昇順に出力してみましょう。
出力先の別名は、先頭から「所属部署名」「社員氏名」「勤務時間」とします。*/

--取得列
SELECT

	--所属部署名の取得先を所属部署テーブルの部署名列とする
	DepartMentTable.depart_name AS 所属部署名,
	
	--社員氏名の取得先を社員テーブルの姓＋名列とする
	EmployeeTable.l_name || EmployeeTable.f_name AS 社員氏名,
	
	--勤務時間の取得先をタイムテーブルの勤務時間列とする
	TimeTable.work_time AS 勤務時間

--参照テーブル
FROM

	--社員テーブルと所属部署テーブルの結合を行う
	(
	--社員テーブル
	employee AS EmployeeTable
	
	--ある社員の部署について情報を取り出すので左外部結合
	LEFT JOIN
	
		--所属部署テーブル
		depart As DepartmentTable
	
	--結合列
	ON
	
		--部署コード
		EmployeeTable.depart_id = DepartmentTable.depart_id
	)

--勤務時間に対する情報を取り出すので右外部結合
RIGHT JOIN

	--タイムテーブル
	time_card AS TimeTable
	
--結合列
ON
	
	--社員コード
	EmployeeTable.s_id = TimeTable.s_id

--条件
WHERE

	--社員コードが'DA00001'
	EmployeeTable.s_id = 'DA00001'

--かつ	
AND 

	--2012年の12月分
	TimeTable.r_date BETWEEN '2012-12-01' AND '2012-12-31'
	
--ソート
ORDER BY

	--日付について昇順
	TimeTable.r_date ASC
;
