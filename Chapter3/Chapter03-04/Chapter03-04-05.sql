/*3-4 問5 アンケート回答テーブル(quest)に「男性」「女性」「男」「女」という表記の揺らぎがありましたので、
これを「男」「女」という表記に統一したいと思います。
以下のSQL命令を記述してみましたが、誤りがあり正常に動作しません。
誤りを2点、指摘してみましょう。*/

--①INTOは不要
--UPDATE INTO

--更新対象
UPDATE

	--アンケート回答テーブル
	quest

	
--②VALUEではなくSET

--更新内容	
SET

	--「男性」「女性」から性を除去
	sex = TRIM(TRAILING '性' FROM sex)
;
