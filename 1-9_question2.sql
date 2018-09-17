/*1-9 問2 アンケート回答テーブル(quest)から都道府県、性別ごとに本書の評価の平均を取り出してみましょう。
以下の空欄を埋めて、SQL命令を完成させて下さい。*/

--取得列
SELECT

	--都道府県
	prefecture,

	--性別
	sex,
	
	--評価平均
	AVG(answer1)
	
--テーブル
FROM 

	--アンケート回答テーブル
	quest

--グループ化キー
GROUP BY

	--都道府県
	prefecture,

	--性別
	sex 
;

