/*2-2 問2 社員テーブル(employee)と所属部署テーブル(depart)を結合し、所属社員が一人もいない「幽霊」部署を洗い出してみましょう。
以下の空欄を埋めて、SQL命令を完成させてください。*/

--取得列
SELECT

	--所属部署テーブルに存在する部署id
	DepartmentTable.depart_id,
	
	--所属部署テーブルに存在する部署名
	DepartmentTable.depart_name
	
--参照テーブル
FROM

	--所属部署テーブル
	depart AS DepartmentTable
	
--左外部結合を行うテーブル
LEFT JOIN

	--社員テーブル
	employee AS EmployeeTable

--結合列	
ON

	--部署id
	DepartmentTable.depart_id = EmployeeTable.depart_id
	
--条件
WHERE 

	--社員テーブルのid列に値がない
 	EmployeeTable.depart_id IS NULL	

;

	

	
