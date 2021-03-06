﻿/*1-12 問6 アクセス記録テーブル(access_log)からアクセス日付が2013/01/01以降のものについて、
リンク元URL毎にアクセス数を算出してみましょう。その際、アクセス数が5件未満のもののみをアクセス数降順で出力してください。
以下の空欄を埋めて、SQL命令を完成させてみましょう。*/

--取得列
SELECT

	--リンク元URL
	referer,
	
	--アクセス数
	Count(*)
	
--テーブル
FROM 

	--アクセス記録テーブル
	access_log

--条件
WHERE

	--アクセス日付が2013/01/01以降
	access_date >= '2013-01-01'

--グループ化のキー
GROUP BY

	--リンク元URL
	referer

--グループ化結果に対する条件
HAVING

	--アクセス数が5件未満
	Count(*) < 5  
	
--ソート
ORDER BY

	--アクセス数について降順
	count(*) DESC
;

/*
          referer          | count
---------------------------+-------
 http://wings.msn.to/neko/ |     3
 http://wings.msn.to/kame/ |     1
 http://wings.msn.to/tori/ |     1
 http://wings.msn.to/saru/ |     1
*/