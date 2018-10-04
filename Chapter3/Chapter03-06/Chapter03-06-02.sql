/*3-6 問2 問1のSQL命令を相関サブクエリを使って書き換えてみましょう。*/

--更新対象
UPDATE

	--社員テーブル
	employee

--更新内容	
SET
	
	--所属部署コードを「Z99(未登録)」に変更
	depart_id = 'Z99'

--更新条件
WHERE

	--サブクエリが偽の場合
	NOT EXISTS
	
	--ある社員の所属部署が所属部署テーブルにあるかどうかを調べるサブクエリ
	(
	
		--取得
		SELECT
		
			--全部列
			*
		
		--参照範囲
		FROM
		
			--所属部署テーブル
			depart
			
		--取得条件
		WHERE
		
			--社員テーブルの所属部署コードが、所属部署テーブルにある
			depart.depart_id = employee.depart_id 
	
	--サブクエリ終了
	)
	
;

/*
UPDATE 2
*/