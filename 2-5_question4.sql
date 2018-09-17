/*2-5 問4 貸出記録テーブル(rental)上を検索し、これまでに1度も書籍の貸し出しを行ったことのない
ユーザの氏名をユーザテーブル(usr)から取り出してみましょう。*/

--選択列
SELECT

	--ユーザーテーブルの姓+名を氏名とする
	UserTable.l_name || UserTable.f_name AS 氏名
	
--参照範囲
FROM

	--ユーザテーブル
	usr AS UserTable
	
--ユーザに関して情報を集めるので、左外部結合を行う
LEFT JOIN

	--貸出記録テーブル
	rental AS RentalTable
	
--結合列
ON 

	--ユーザテーブルのユーザコードと、貸出記録テーブルのユーザコード
	UserTable.user_id = RentalTable.user_id
	
--条件
WHERE

	--サブクエリの真偽をチェック
	NOT EXISTS
	
		--書籍の貸し出しを行ったことのあるユーザを調べるサブクエリ
		(
			--選択列
			SELECT
			
				--全列
				*
				
			--選択範囲
			FROM
			
				--貸出記録テーブル
				rental AS RentalTable
			
			--条件
			Where	
			
				--貸出記録テーブルのユーザーコードとユーザーテーブルのユーザーテーブルが一致
				RentalTable.user_id = UserTable.user_id
		)
;
