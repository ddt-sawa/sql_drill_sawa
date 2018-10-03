/*1-5 問4 社員テーブル(employee)から氏(カナ)が「ア」で始まる社員の情報だけを取り出してみましょう。
取り出す列は、l_name、f_name列とします。*/

--取得列
SELECT 

	--氏
	l_name, 

	--名
	f_name 
	
--参照範囲	
FROM 

	--社員テーブル
	employee 
	
--取得条件	
WHERE 

	--氏名がアからはじまる
	l_name_kana LIKE 'ア%'
;

/*
 l_name | f_name
--------+--------
 相沢   | 聡
*/