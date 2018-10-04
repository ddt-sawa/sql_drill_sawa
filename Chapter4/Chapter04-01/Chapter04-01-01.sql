/*4-1 問1 著者情報テーブル(author)を新規に作成してみましょう。
以下の空欄を埋めて、SQL命令を完成させてください。*/

--作成するテーブル名
CREATE TABLE

	--著者情報テーブル
	QuestTable
	(
		--著者id（固定5文字、主キー）
		AUTHOR_ID CHAR(5) PRIMARY KEY,
		
		--著者名(可変長30文字)
		AUTHOR_NAME VARCHAR(30),
		
		--著者名カナ(可変長100文字)
		AUTHOR_KANA VARCHAR(100),
		
		--生年月日
		AUTHOR_BIRTH DATE
	
	)
;

/*
CREATE TABLE
*/