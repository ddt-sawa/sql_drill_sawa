/*3-8 問1 所属部署テーブル(depart)にない所属部署に属する社員を社員テーブル(employee)から削除してください。
以下の空欄を埋めて、SQL命令を完成させましょう。*/

--削除対象
DELETE FROM

	--社員テーブル
	employee
	
--削除条件
WHERE

	--所属部署テーブルにない所属部署IDに属している
	depart_id NOT IN
	
		--所属部署テーブルにある所属部署を探すサブクエリ
		(
			--取得範囲
			SELECT
			
				--所属部署ID
				depart_id
				
			--対象範囲
			FROM
			
				--所属部署テーブル
				depart
		)
		
;

/*
DELETE 2
*/
