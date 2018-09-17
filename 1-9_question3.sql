/*1-9 問3 月間売上テーブル(sales)で、店舗別の累計売上高を算出するためのSQL命令を記述してみましょう。*/

--取得列
SELECT

	--店舗
	s_id,

	--累計売上高
	SUM(s_value)
	
--テーブル
FROM 

	--月間売上テーブル
	sales

--グループ化キー
GROUP BY

	--店舗
	s_id
;

