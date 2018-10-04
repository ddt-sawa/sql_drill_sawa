/*3-6 問4 貸出記録テーブル(rental)上、returned列が9()紛失であるレコードについて、
対応する書籍情報テーブル(books)上の分類IDを「XXXXX」（その他）に更新してみましょう。*/

--更新対象
UPDATE

	--書籍情報テーブル
	books

--更新内容	
SET
	
	--分類IDを「XXXXX」（その他）に更新
	category_id = 'XXXXX'
	
--更新条件
WHERE

	--サブクエリが真である場合
	EXISTS
	
		--貸出記録テーブルで書籍が紛失中であるかどうかを調べるサブクエリ
		(
		
			--取得列
			SELECT
			
				--全列
				*
			
			--参照範囲	
			FROM
			
				--貸出記録テーブル
				rental
			
			--取得条件	
			WHERE
			
				--書籍テーブルのisbnと貸出テーブルのisbnが一致
				books.isbn = rental.isbn
			
			--かつ
			AND
			
				--紛失中
				returned = 9
			
		)
;

/*
UPDATE 2
*/