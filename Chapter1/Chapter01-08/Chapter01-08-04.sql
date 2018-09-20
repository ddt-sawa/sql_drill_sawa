/*1-8 問4 以下は、アクセス記録テーブル(access_log)からアクセス日時の新しい順に10件のログデータを取得するためのSQL命令です。
(取得列はpage_id, referer,ip_address)が、2点誤りがあります。誤りを指摘してください。*/

--取得列
SELECT

	--ページID
	page_id,
	
	--参照元アドレス
	referer,
	
	--IPアドレス
	ip_address
	
--テーブル
FROM 

	--アクセス記録テーブル
	access_log

--ソート方法
ORDER BY

	--①日時が新しい順なので、昇順ではなく降順
	--access_date ASC
	
	--アクセス日時が新しい順
	access_date DESC

--取得行数
LIMIT

	--②PostGreSQLでは正しい表記であるが、MySQLでは、先頭行番号、行数の順に指定
	--10,0

	--LIMITとOFFSET句に分けて記述
	10

--取得行の先頭行番号	
OFFSET 

	--0行目
	0
;
