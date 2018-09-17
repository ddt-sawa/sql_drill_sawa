/*1-11 問2 貸出記録テーブル(rental)から未返却の書籍情報を貸出日について昇順で抽出してみましょう。
取得列は、ISBNコードと貸出日(YY/MM/DDの形式)、別名はそれぞれ「ISBNコード」「貸出日」とします。
以下の空欄を埋めて、SQL命令を完成させて下さい。*/

--取得列
SELECT

	--ISBNコード
	isbn As "ISBNコード",

	--貸出日をPostgresSQLにおける「YY/MM/DD」形式で表示
	TO_CHAR(rental_date,'YY//MM//DD') AS 貸出日
	
--テーブル
FROM 

	--アンケート回収テーブル
	rental

--条件指定
WHERE

	--未返却
	returned = 0

--ソート方法
ORDER BY

	--貸出日について昇順
	rental_date ASC
;
