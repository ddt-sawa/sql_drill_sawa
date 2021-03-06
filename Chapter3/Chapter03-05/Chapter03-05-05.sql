﻿/*3-5 問5 以下は、貸出記録テーブル(rental)上、利用者コードがB200405、ISBNコードが
4-0010-0000-1のデータについて、貸出日を今日の日付に更新するためのSQL命令ですが、
誤りが2点あります。誤りを指摘して下さい。*/

--更新対象
UPDATE

	--貸出記録テーブル
	rental

--更新内容	
SET

	--①代入演算子がない
	--rental_date CURRENT_DATE

	--貸出日を今日の日付に
	rental_date = CURRENT_DATE
	
--更新条件
WHERE

	--利用者コードがB200405
	user_id = 'B200405'
	
--②ORではなくAND
--OR

--かつ	
AND

	--ISBNコードが4-0010-0000-1
	isbn = '4-0010-0000-1'
;

/*
UPDATE 1
*/