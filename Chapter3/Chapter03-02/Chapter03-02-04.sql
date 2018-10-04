/*3-2 問4 以下は、社員テーブル(employee)に対して、表のデータを挿入するためのSQL命令ですが、
2点誤りがあります。誤りを指摘してください。*/

--挿入を行う対象
INSERT INTO

	--社員テーブル
	employee
	
	--挿入列
	(		
	--①列名に区切りにカンマがない
		--s_id	
		--l_name
		--depart_id
		--last_update
		
		--社員コード
		s_id,
		
		--社員名(氏)
		l_name,
		
		--所属部署コード
		depart_id,
		
		--最終更新日
		last_update
	)

--②VALUEになっている
--VALUE

--挿入する値
VALUES
	(
		--社員コード
		'WA00001',
		
		--社員名(氏)
		'和田',
		
		--所属部署コード
		'J01',
		
		--最終更新日
		CURRENT_DATE
		
	)
;
		
/*
INSERT 0 1
*/