/*2-3 問3 社員テーブル(employee)からそれぞれの社員氏名と上司氏名を、社員コードについて昇順に取り出してみましょう。
なお、取り出す列には別名として「社員氏名」「上司氏名」とし、上司がいない社員についても情報は取り出すことにします。*/

--取得列
SELECT

	--社員名
	CurrentTable.l_name || CurrentTable.f_name AS 社員氏名,
	
	--上司氏名
	BossTable.l_name || BossTable.f_name AS 上司氏名

--参照テーブル
FROM

	--社員氏名を取り出す用社員テーブル
	employee AS CurrentTable
	

--自己結合を行うテーブル
LEFT JOIN

	--上司氏名を取り出すテーブル
	employee AS BossTable

--結合列
ON

	--ある社員の上司コードに対して、上司の社員コードを適用する
	CurrentTable.b_id = BossTable.s_id
	
--ソート
ORDER BY

	--社員テーブル.社員コードに対して昇順
	CurrentTable.s_id ASC
;
