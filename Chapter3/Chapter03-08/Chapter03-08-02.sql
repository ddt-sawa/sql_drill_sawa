/*3-8 問2 問1のSQL命令を相関サブクエリを使って書き換えてみましょう。*/

--削除対象
DELETE FROM

	--社員テーブル
	employee
	
--削除条件
WHERE

	--サブクエリが偽
	NOT EXISTS
	
		--社員テーブルの特定レコードの所属部署IDが、所属部署テーブルにあるかのどうかを返すサブクエリ
		(
			--取得範囲
			SELECT
			
				--所属部署ID
				depart.depart_id
				
			--対象範囲
			FROM
			
				--所属部署テーブル
				depart
				
			--取得条件
			WHERE
			
			--社員テーブルの特定レコードの所属部署IDが、所属部署テーブルにある
			employee.depart_id = depart.depart_id
		)
		
;

/*
DELETE 0
*/
	
