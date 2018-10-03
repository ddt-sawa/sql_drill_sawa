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

/*
 user_id | l_name | f_name | l_name_kana | f_name_kana | prefecture |    city    | o_address |     tel      |      email
---------+--------+--------+-------------+-------------+------------+------------+-----------+--------------+------------------
 A200404 | 小野   | 雄二   | オノ        | ユウジ      | 東京都     | 東京市南町 | 3-2-6     | 040-111-0004 | ono@examples.com
*/