/*2-6 問4 以下は、著者情報テーブル(author)とユーザテーブル(usr)からそれぞれ氏名の情報を
取り出すためのSQL命令ですが、2点誤りがあります。誤りを指摘してください。
なお、統合したデータは重複を含まないものとし、結果は氏名(カナ)について降順で並び替えます*/



--取得列
SELECT

	--著者情報テーブルから氏名(カナ)
	AuthorTable.name_kana AS 氏名
	

--参照範囲
FROM

	--著者情報テーブル
	author AS AuthorTable
	
	
--①重複を含まないので、UNION ALLではなくUNION
--UNION ALL

--和集合(重複なし)
UNION


--取得列
SELECT

	--②第一取得列数が一つなので、列数が二つでは結合できない
	--UserTable.l_name, 
	--UserTable.f_name 
	
	--ユーザテーブルから姓と名
	UserTable.l_name_kana || UserTable.f_name_kana AS 氏名
	

--参照範囲
FROM

	--ユーザテーブル
	usr AS UserTable
	
	--ソート
ORDER BY

	--氏名について降順
	1 DESC
	
