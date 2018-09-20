/*1-6 問2 ユーザテーブル(usr)から東京都在住で、かつE-Mailアドレスのドメインが「examples.com」
のユーザ情報を取り出してみましょう。*/

--取得列
SELECT 

	--全列
	* 	
	
--参照範囲
FROM 

	--ユーザテーブル
	usr 
		
--取得条件
WHERE 

	--東京都在住
	prefecture = '東京都' 
	
	--かつ
	AND 
	
	--メールアドレスが「examples.com」
	email LIKE '%examples.com'
;
