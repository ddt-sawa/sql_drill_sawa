/*2-1 問1 社員テーブル(employee)とタイムカードテーブル(time_card)から氏名と2012年12月の勤務時間を、
社員コード、日付について昇順で出力してみましょう。空欄を埋めて、SQL命令を完成させましょう。*/

--取得列
SELECT

	--氏名
	e.l_name || e.f_name AS 氏名,
	
	--出勤日
	t.r_date,
	
	--労働時間
	t.work_time
	
--テーブル
FROM 

	--社員テーブル
	employee AS e
	
--結合するテーブル
INNER JOIN 

	--タイムカードテーブル
	time_card AS t

--結合
ON

--両テーブルの社員idにおいて結合を行う
e.s_id = t.s_id

--条件
WHERE

    --2012年12月分
	t.r_date BETWEEN '2012-12-01' AND '2012-12-31'
	
--ソート
ORDER BY

	--社員IDについて昇順
	e.s_id ASC,
	
	--出勤日について昇順
	t.r_date ASC
	
;
