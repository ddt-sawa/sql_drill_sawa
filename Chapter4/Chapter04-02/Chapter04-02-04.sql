﻿/*4-2 問4 以下は、ユーザテーブル(usr)に対して住所(都道府県、市町村、その他)で
複合インデックスを作成するためのSQL命令ですが、誤りが2点あります。誤りを指摘してください。*/


--作成するインデックス
CREATE INDEX

	--ユーザテーブルインデックス
	ind_usr

--①INではなくON
--IN

--対象列
ON

	--ユーザーブルの
	usr
	
	(
	--②区切り子のカンマがない
	--prefecture
	--city
	--o_address
	
	--都道府県
	prefecture,
	
	--市町村
	city,
	
	--その他
	o_address
	
	)
;

/*
CREATE INDEX
*/