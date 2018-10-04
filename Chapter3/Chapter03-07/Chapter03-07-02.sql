/*3-7 問2 アクセス記録テーブル(access_log)からアクセス日時が2012年06月01日より前か、
リンク元のURLが空である情報を削除しましょう。空欄を埋めて、正しいSQL命令を完成させてください。*/

--削除対象
DELETE FROM

 	--アクセス記録テーブル
	access_log
	
--削除条件
WHERE

	--アクセス日が2012年06月01日より前
	access_date < '2012-06-01'
	
--又は
OR

	--リンク元URLが空文字
	referer = ''

--又は	
OR

	--リンク元URLがNULL
	referer IS NULL
;
	
/*
DELETE 15
*/