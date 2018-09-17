/*4-3 問4 ユーザテーブル(usr)のf_name_kana列の後方に以下の2列を追加してみましょう。
・sex列(VARCHAR(5)型、デフォルト値は男)
・job列(VARCHAR(30)型)
PostgresSQLは追加位置の指定ができないので、最高尾に追加*/

--変更するテーブル
ALTER TABLE

	--ユーザテーブル
	usr
	
--追加する内容
ADD 

	--sex列(VARCHAR(5)型、デフォルト値は男)
	sex VARCHAR(5) DEFAULT '男',

--追加する内容	
ADD 

	--job列(VARCHAR(30)型)
	job VARCHAR(30)
;

