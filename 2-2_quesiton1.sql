/*2-2 問1 ユーザテーブル(usr)と貸出記録テーブル(rental)から、ユーザーごとの貸出数を、貸出数が多い順に取得してみましょう。
取得列は、ユーザの氏名と貸出件数都市、貸出件数が0のユーザも出力するものとします。以下の空欄を埋めて、SQL命令を完成させましょう。*/

--取得列
SELECT

	--姓
	UserTable.l_name AS 姓,
	
	--名
	UserTable.f_name AS 名,
	
	--レンタルテーブルの該当id件数を貸出数とする
	COUNT(RentalTable.id) AS 貸出数
	
--テーブル
FROM 

	--貸出記録テーブル
	rental AS RentalTable   
	
--右外部結合を行うテーブル
Right JOIN 

	--ユーザテーブル
	usr AS UserTable

--結合
ON

	--両テーブルのユーザーidにおいて結合を行う
	RentalTable.user_id = UserTable.user_id

--グループ化キー
GROUP BY 

	--ユーザID
	RentalTable.user_id,	
	
	--ユーザー姓
	UserTable.l_name,
	
	--ユーザー名
	UserTable.f_name

--ソート
ORDER BY

	--貸出数が多い順
	COUNT(RentalTable.id) DESC
;
