/*3-5 問2 社員テーブル(employee)上、名前が「山田 奈美」さんの役職を「主任」に、
最終更新日を今日の日付にしてみましょう。空欄を埋めて、SQL命令を完成させてください。*/

--更新対象
UPDATE

	--社員テーブル
	employee
	
--更新内容	
SET

	--役職を主任に
	class = '主任',
	
	--最終更新日を今日の日付に
	last_update = CURRENT_DATE

--更新条件
WHERE

	--姓が山田
	l_name = '山田'

--かつ	
AND
	--名が奈美
	f_name = '奈美'
	
;

/*
UPDATE 1
*/