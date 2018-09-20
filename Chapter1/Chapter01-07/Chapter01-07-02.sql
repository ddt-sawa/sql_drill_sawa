/*1-7 問2 ユーザテーブル(usr)から東京都、千葉県、神奈川県に住んでいる人のリストを姓(カナ)、名(カナ)について昇順でリストしてみましょう。
取り出す列は、l_name、f_name、prefecture列とします。*/

--取得列
SELECT 

	--氏、名、都道府県
	l_name, f_name, prefecture 
	
--参照範囲	
FROM 

	--ユーザテーブル
	usr 
	
--取得条件	
WHERE 

	--都道府県が東京都、千葉県、神奈川県のいずれか
	prefecture IN ('東京都','千葉県', '神奈川県')
	
--ソート	
ORDER BY 

	--氏、名について昇順
	l_name_kana ASC, f_name_kana ASC
; 
