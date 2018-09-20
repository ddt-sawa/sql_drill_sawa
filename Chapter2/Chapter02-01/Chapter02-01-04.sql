/*2-1 問4 貸出記録テーブル(rental)とユーザテーブル(usr)からそれぞれのユーザについて、
現在何冊を貸し出しているかを、貸出数の多い順に取得してみましょう。
取得列は、ユーザの氏名、貸出数とします。また、貸出数0のユーザは出力する必要はありません。*/

--取得列
SELECT

	--ユーザテーブルの姓と名を結合して氏名とする
	UserTable.l_name || UserTable.f_name AS 氏名,
	
	--レンタルテーブルの該当id件数を貸出数とする
	COUNT(RentalTable.user_id) AS 貸出数
	
--テーブル
FROM 

	--貸出記録テーブル
	rental AS RentalTable   
	
--結合するテーブル
INNER JOIN 

	--ユーザテーブル
	usr AS UserTable

--結合
ON

	--両テーブルのユーザーidにおいて結合を行う
	RentalTable.user_id = UserTable.user_id
	
--条件
WHERE

	--未返却
	RentalTable.returned = 0
	
--グループ化キー
GROUP BY 

	--ユーザID
	RentalTable.user_id,	
	
	--ユーザー姓
	UserTable.l_name,
	
	--ユーザー名
	UserTable.f_name

--グループ化の結果への条件
HAVING 

	--貸出数が1冊以上
	COUNT(RentalTable.id) > 0
	
--ソート
ORDER BY

	--貸出数が多い順
	COUNT(RentalTable.user_id) DESC
;
