﻿/*3-7 問1 貸出記録テーブル(rental)から貸し出し日が2011年12月31日以前で、かつ、
返却済みである情報について削除してみましょう。空欄を埋めて、正しいSQL命令を完成させてください。*/

--削除対象
DELETE FROM

 	--貸出記録テーブル
	rental
	
--削除条件
WHERE

	--貸し出し日が2011年12月31日以前
	rental_date < '2011-12-31'
	
AND

	--返却済
	returned = 1
;
	
/*
DELETE 8
*/