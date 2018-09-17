/*2-2 問3 書籍情報テーブル(books)と貸出記録テーブル(rental)とを結合し、書籍ごとの貸出数累計を、
累計数が多い順に出力してみましょう。その際、貸出履歴が1回もない書籍についても出力することにします。*/

--取得列
SELECT

	--書籍名
	BookTable.title AS 書籍名,
	
	--貸出累計数
	Count(RentalTable.id)
	
--参照テーブル	
FROM

	--貸出記録テーブル
	rental AS RentalTable
	
--右外部結合を行うテーブル
RIGHT JOIN

	--書籍情報テーブル
	books AS BookTable 

--結合する列	
ON

	--isbn
	RentalTable.isbn = BookTable.isbn
	
--グループ化のキー
GROUP BY

	--書籍情報テーブルの名前
	BookTable.title
	
--ソート
ORDER BY

	--貸出数累計が多い順
	Count(RentalTable.id) DESC
;
