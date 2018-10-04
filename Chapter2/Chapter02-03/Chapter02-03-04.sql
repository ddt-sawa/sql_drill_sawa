﻿/*2-3 問4 以下は、書籍目次テーブル(contents)から現在のコンテンツコードと前のコンテンツコードを、
現在のコンテンツコードについて昇順で取り出すためのSQLですが、誤りが2点あります。
誤りを指摘してください。*/

--取得列
SELECT

	--ひとつ前に参照したコンテンツコード
	PreviousTable.c_id AS 前のページ,
	
	--現在参照中のコンテンツコード
	CurrentTable.c_id AS 現在のページ
	
--参照テーブル
FROM

	--現在のコンテンツコードを取り出すテーブル
	contents AS CurrentTable

--①内部結合なので、OUTER JOINは使えない
--OUTER JOIN

--自己結合を行う
INNER JOIN

	--前のコンテンツコードを取り出すテーブル
	contents AS PreviousTable
	
--結合列
ON

	--②<>ではなく=
	--PastTable.next_id = CurrentTable.c_id 

	--前のコンテンツテーブルにおける次回コンテンツコードと、現在のコンテンツテーブルにおけるコンテンツコード
	PreviousTable.next_id = CurrentTable.c_id 

--ソート		
ORDER BY

	--現在のコンテンツコードに関して昇順
	CurrentTable.c_id
;

/*
 前のページ | 現在のページ
------------+--------------
 A001       | A011
 A011       | A012
 A012       | A013
 A013       | A014
 A014       | A015
 A015       | A016
 A016       | A017
 A017       | A021
 A021       | A022
 A022       | A023
 A023       | A024
 A024       | A025
 A025       | A026
 A026       | A027
 A027       | A028
 A028       | A029
 A029       | A031
 A031       | A032
 A032       | A033
 A033       | A034
 A034       | A035
 A035       | A036
 A036       | A037
 A037       | A041
 A041       | A042
 A042       | A043
 A043       | A044
 A044       | A045
 A045       | A046
*/