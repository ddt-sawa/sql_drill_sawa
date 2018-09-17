/*1-8 問3 貸出記録テーブル(rental)から未返却のもので貸出日が古いものを先頭から5件取り出してみましょう。
取得列はuser_id,isbn,rental_date列とします。*/

--取得列
SELECT

	--利用者ID
	user_id,
	
	--isbn
	isbn,
	
	--貸出日
	rental_date
	
--テーブル
FROM 

	--貸出記録テーブル
	rental

--条件
WHERE

	--未返却
	returned = 0

--ソート方法
ORDER BY

	--貸出日が古い順
	rental_date ASC

--取得行数
LIMIT

	--5行
	5
;
