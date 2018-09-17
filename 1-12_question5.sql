/*1-12 問5 以下は、社員テーブル(employee)から所属部署ごとの女性の人数を求め、
3人以上の部署だけを出力するためのSQL命令ですが、2つ誤りがあります。誤りを指摘してください。*/

--取得列
SELECT

	--所属部署
	depart_id,
	
	--女性の数
	Count(*)
	
--テーブル
FROM 

	--社員テーブル
	employee

WHERE

	--女性
	sex = 2
	
--①グループ化なので、ORDER BYではなくGROUP BY
--ORDER BY

--グループ化のキー
GROUP BY

	--所属部署
	depart_id
	
	
--②グループ化結果に対する条件なので、WHEREではなくHAVING
--WHERE

--グループ化結果に対する条件
HAVING

	--女性の人数が3人以上
	Count(*) >= 3  
;
