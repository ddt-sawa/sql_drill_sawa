/*4-3 問1 書籍情報テーブル(books)に対して、pages列(INT型、デフォルト値0)、
rating列(CHAR(1)型、デフォルトは'B')を新たに追加してみましょう。追加先は、テーブル定義の一番最後とする。
空欄を埋めて、SQL命令を完成させてください。*/

--変更を加えるテーブル
ALTER TABLE

	--書籍情報テーブル
	books
	(
		--pages列(INT型、デフォルト値0)
		pages INT DEFAULT 0 NOT NULL
	
		--売上月(日付型,NULL禁止)
		rating列 (CHAR(1)型、DEFAULT 'B') NOT NULL	
	) 
;

