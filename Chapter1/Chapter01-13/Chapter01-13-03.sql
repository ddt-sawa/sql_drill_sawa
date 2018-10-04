﻿/*1-13 問3 アクセス記録テーブル(access_log)からリンク元ごとのアクセス数を求め、
10件未満を「C」、10件以上50件未満を「B」、50件以上を「A」とする「ランク」列を取得してみましょう。
また、データはアクセス数が3件以上のものを多い順に並べるものとします。*/

--取得列
SELECT

	--リンク元
	referer,
		
	--アクセス数
	Count(*),
	
	--条件分岐
	CASE 
	
		--アクセス数が50件以上の場合「A」
		WHEN Count(*) >= 50 THEN 'A'
		
		--そうでなく10件以上の場合「B」
		WHEN Count(*) >= 10 THEN 'B'
		
		--それ以外の場合Cを出力
		ELSE 'C'
	
	--をランクとして出力
	END AS ランク
	
--テーブル
FROM 

	--アクセス記録テーブル
	access_log

--グループ化のキー
GROUP BY

	--リンク元
	 referer

--グループ化結果に対する条件	 
HAVING

	--アクセス数が3件以上
	Count(*) >= 3 

--ソート
ORDER BY 

	--アクセス数が多い順
	Count(*) DESC
;

/*
          referer          | count | ランク
---------------------------+-------+--------
 http://wings.msn.to/hamu/ |   100 | A
 http://wings.msn.to/neko/ |    11 | B
 http://wings.msn.to/saru/ |     4 | C
 http://wings.msn.to/kame/ |     3 | C
 http://wings.msn.to/tori/ |     3 | C
 http://wings.msn.to/inu/  |     3 | C
*/