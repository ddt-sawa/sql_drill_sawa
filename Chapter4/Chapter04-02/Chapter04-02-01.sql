﻿/*4-2 問1 貸出記録テーブル(rental)上に貸出日をキーにしたインデックスを作成してみましょう。
以下の空欄を埋めて、SQL命令を完成させてください。*/

--作成するインデックス
CREATE INDEX

	--貸出記録インデックス
	ind_rental

--対象列
ON

	--貸出記録テーブルの
	rental
	
	(
		--貸出日
		rental_date
	)
;

/*
CREATE INDEX
*/