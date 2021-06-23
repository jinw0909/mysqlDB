# 01 그룹별 개수 세기
# 리뷰 작성자별로 몇개의 리뷰를 작성했는지 출력하세요

SELECT `userName`, COUNT(*) AS count FROM `review` GROUP BY `userName`;

# 02 그룹별 평균 구하기
# 가게 별 별점의 평균 점수를 출력하세요

SELECT `storeName`, AVG(`point`) AS average FROM `review` GROUP BY `storeName`;

# 03 그룹 조건
# 리뷰 작성 건수가 4건 이상인 작성자를 출력하세요

SELECT `userName`, COUNT(*) AS count FROM `review` GROUP BY `userName`HAVING count > 3;

# 04 학생별 평균
# 2020년 1학기 기말고사 학생별 평균을 출력하세요

SELECT `name`, AVG(`score`) FROM `score` 
WHERE `term` = '기말고사' AND `semester` = 1 AND `year` = 2020 
GROUP BY `name`;

# 05 성적별 평균
SELECT `subject`, AVG(`score`) FROM `score` 
WHERE `year` = 2020 
GROUP BY `subject`;

# 06 석차 구하기
# 2020년 모든 시험의 학생별 평균 점수를 구하고 석차 순서로 출력하세요

SELECT `name`, AVG(`score`) AS average FROM `score` 
WHERE `year` = 2020
GROUP BY `name`
ORDER BY average DESC;
