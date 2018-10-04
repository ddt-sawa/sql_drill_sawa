/*3-8 問4 貸出記録テーブル(rental)上、returned列が9(紛失)であるレコードについて、
対応する書籍情報テーブル（books）上の書籍情報を削除してみましょう。*/

--削除対象
DELETE FROM

	--書籍情報テーブル
	books
	
--削除条件
WHERE

	--相関サブクエリが真
	EXISTS
	
		--紛失中かどうかを調べるサブクエリ
		(
			--取得範囲
			SELECT
			
				--全列
				*
				
			--参照範囲
			FROM
			
				--貸出記録テーブル
				rental
			
			--取得条件
			WHERE
			
				--返却状況が紛失
				returned = 9
			
			--かつ	
			AND
			
				--書籍情報テーブルと貸出記録テーブル上にIBSNコードが存在する
				books.isbn = rental.isbn
		)
		
;
	
/*
DELETE 0
*/