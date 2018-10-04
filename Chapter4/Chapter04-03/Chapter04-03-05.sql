/*4-3 問5 以下は、社員テーブル(employee)のdepart_id列の後方に「email列(VARCHAR(255)型)」を追加するSQL命令ですが、
2点誤りがあります。誤りを指摘してください。
PostgresSQLは追加位置の指定ができないので、最高尾に追加*/

--変更するテーブル
ALTER TABLE

	--社員テーブル
	employee
	
--①TOは不要
--ADD TO

--追加する内容
ADD 

	--email列(VARCHAR(255)型
	email VARCHAR(255)

--②MySQLでは、後方に追加を行うときはBEFOREではなくAFTER
--BEFORE

--AFTER depart_id
;

/*
ALTER TABLE
*/