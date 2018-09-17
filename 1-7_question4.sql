/*1-7 問4 以下は、アクセス記録テーブル(access_log)から2013年1月分のアクセスログをreferer,ip_address列について
取り出すためのSQL命令ですが、2点誤りがあります。誤りを指摘してください。*/

--選択範囲
SELECT

	--全ての列
	*
	
--テーブル
FROM 

	--アクセス記録テーブル
	access_log

--条件指定
WHERE 

	--①この条件だと両日付のアクセスログしか取得できない
	--access_date IN ('2013-01-01', '2013-01-31')
	
	--2013年1月分のアクセスログを取得
	access_date BETWEEN '2013-01-01' AND '2013-01-31'

--ソート方法
ORDER BY

	--②referer列のソート方法が省略されているため昇順になってしまう
	--referer, ip_address DESC
	
	--referer列とip_adress列について降順
	referer DESC, ip_address DESC
;

