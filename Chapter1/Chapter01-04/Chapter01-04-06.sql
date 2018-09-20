/*1-4 問6 貸出記録テーブル(rental)から貸し出し中の情報だけを取り出してみましょう。
取り出す列は、user_id, isbn列とします。*/

--取得列
SELECT 

	--ユーザID,ISBN
	user_id, isbn

--参照列
FROM 

	--貸出記録テーブル
	rental
	
--取得条件	
WHERE 

	--貸出中のみ
	returned = 0
;
