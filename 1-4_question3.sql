/*1-4 問3 ユーザテーブル(usr)から「東京都」に住んでいない人の情報だけを取り出してみましょう。
取り出す列は、l_name、f_name、email列とします。*/

--取得列
SELECT 

	--氏,名,メールアドレス
	l_name, f_name, email 
	
	
--参照範囲
FROM

	--ユーザテーブル
	 usr 
	 
--取得条件	 
WHERE 


	--都道府県が東京都以外
	prefecture <> '東京都'
;
