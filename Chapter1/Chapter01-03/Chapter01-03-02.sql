﻿/*1-3 問2 アクセス記録テーブル(access_log)からリンク元URLを重複のない形式で取り出してみましょう。
以下の空欄を埋めて、SQL命令を完成させてください。*/

--取得列(重複なし)
SELECT DISTINCT 

	--リンク元URL
	referer 

--参照範囲	
FROM 
	
	--アクセス記録テーブル
	access_log
;

/*
          referer
---------------------------
 http://wings.msn.to/hamu/

 http://wings.msn.to/kame/
 http://wings.msn.to/tori/
 http://wings.msn.to/inu/
 http://wings.msn.to/neko/
 http://wings.msn.to/saru/
*/