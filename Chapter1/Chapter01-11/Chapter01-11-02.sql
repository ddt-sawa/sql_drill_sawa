﻿/*1-11 問2 貸出記録テーブル(rental)から未返却の書籍情報を貸出日について昇順で抽出してみましょう。
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

/*
  ISBNコード   |   貸出日
---------------+------------
 4-8833-0000-2 | 12//02//22
 4-0010-0000-0 | 12//03//20
 4-0010-0000-0 | 12//06//14
 4-8833-0000-2 | 12//12//10
 4-8833-0000-3 | 12//12//22
 4-0010-0000-9 | 12//12//27
 4-7981-0959-2 | 13//01//12
 4-7980-0945-8 | 13//01//14
 4-0010-0000-1 | 13//03//10
 4-8833-0000-1 | 13//03//16
*/