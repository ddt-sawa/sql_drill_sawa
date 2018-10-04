/*3-3 問1 社員テーブル(employee)から役職が主任、担当、アシスタントである社員のコードを取り出して、
タイムカードテーブル(time_card)に挿入してみましょう。その際、日付列には今日の日付を、
勤務時間列には固定値で0をセットするものとします。*/

--挿入を行う対象
INSERT INTO

	--タイムカードテーブル
	time_card
	
	--挿入対象
	(
		--社員コード
		s_id,
		
		--勤務日
		r_date,
		
		--勤務時間
		work_time
	)
	
--挿入値
SELECT
		--社員コードは社員情報テーブルの社員コードを代入
		EmployeeTable.s_id,
		
		--勤務日に本日の日付
		CURRENT_DATE,
		
		--勤務時間は0
		0

	
--参照範囲
FROM

	--社員情報テーブル
	employee AS EmployeeTable

--条件
WHERE

	EmployeeTable.class IN ('主任', '担当', 'アシスタント')
	
;

/*
INSERT 0 17
*/
