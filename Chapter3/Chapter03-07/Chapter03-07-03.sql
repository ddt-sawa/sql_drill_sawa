/*3-7 問3 アクセル記録テーブル(access_log)からアクセス日が2012年06月01日より前か、
リンク元のURLが空である情報について削除してみましょう。空欄を埋めて、正しいSQL命令を完成させてください。*/

--削除対象
DELETE FROM

 	--アクセル記録テーブル
	access_log
	
--削除条件
WHERE

	--アクセス日が2012年06月01日より前
	access_date < '2012-06-01'
	
--または
OR

	--リンク元URLが空
	referer = ''
	
OR 

	--リンク元URLがNULL
	referer IS NULL 
;
	
/*
DELETE 0
*/