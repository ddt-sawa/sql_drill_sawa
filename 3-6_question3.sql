/*3-6 問3 書籍情報テーブル(books)上、書名の後方に分類名を付加してみましょう。
以下の空欄を埋めて、SQL命令を完成させてください。*/

--更新対象
UPDATE

	--書籍情報テーブル
	books

--更新内容	
SET
	
	--書名の後方に分類名を付加
	title = title ||
	
		--分類名を取得するサブクエリ
		(
		
			--取得値
			SELECT
			
				--分類名
				category_name	
			
			--参照範囲
			FROM
			
				--分類テーブル
				category
			
			--取得条件	
			WHERE
			
				--書籍情報テーブルと分類テーブルの分類コードが等しい
				books.category_id = category.category_id
			
		)
;
