/*4-1 問5 以下は、貸出記録テーブル(rental)を新規に作成するためのSQL命令ですが、
誤りが2点あります。誤りを指摘してください。*/

--①INTOは不要
--CREATE TABLE
 
--作成するテーブル名
CREATE TABLE 

	--貸出記録テーブル
	RentalTable
	(
		--②列フラグ間にカンマは不要
		--id INT AUTO_INCREMENT, PRIMARY KEY
		
		--PostgresSQLなので、貸出IDの連番をSERIALで指定
		RENTAL_ID SERIAL PRIMARY KEY,  
		
		--ユーザID(固定長7文字)
		USER_ID CHAR(7),
		
		--ISBN(固定長13文字)
		ISBN char(13),
		
		--貸出日(日付型)
		RENTAL_DATE DATE,
		
		--返却状況(短整数,デフォルト値0)
		RENTAL_STATUS SMALLINT DEFAULT 0
		
	)
;
