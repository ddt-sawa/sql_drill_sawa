/*4-4 問2 社員テーブル(employee)上、社員の氏・名定義をいずれも「VARCHAR(50)、NULLを許可しない」に変更してみましょう。
以下の空欄を埋めて、SQL命令を完成させてください。*/

--変更を加えるテーブル
ALTER TABLE

	--社員
	employee
	
--列の定義を変更
ALTER COLUMN

	--氏のデータ型をVARCHAR(50)に変更
	l_name TYPE VARCHAR(50),
	
--列の定義を変更
ALTER COLUMN

	--氏のNULLを許可しない
	l_name SET NOT NULL,
	
--列の定義を変更
ALTER COLUMN

	--名のデータ型をVARCHAR(50)に変更
	f_name TYPE VARCHAR(50),
	
--列の定義を変更
ALTER COLUMN

	--名のNULLを許可しない
	f_name SET NOT NULL
	
;


