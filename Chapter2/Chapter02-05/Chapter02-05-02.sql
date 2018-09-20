/*2-5 問2 所属部署テーブル(depart)から社員テーブル(employee)で使われていない部署コード、
部署名を取り出しましょう。以下の空欄を埋めて、SQL命令を完成させてください。*/

--取得列
SELECT

	--部署コード
	depart_id,
	
	--部署名
	depart_name

--参照テーブル
FROM

	--所属部署テーブル
	depart
	
--条件
WHERE
	
	--サブクエリが真か否か
	NOT EXISTS

	--所属部署テーブルの部署idが、社員テーブルに存在するかどうか
	(
	
	--取得列
	SELECT
	
		--全列
		*
		
	--参照テーブル
	FROM 
	
		--社員テーブル
		employee
		
	--条件
	WHERE
	
		--所属部署テーブルの部署idが、社員テーブルに存在する
		employee.depart_id = depart.depart_id
		
	)	
;
