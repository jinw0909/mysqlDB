# 01. 개수 제한
# 10개의 성적 정보만 출력하세요
SELECT * FROM `score` LIMIT 10;

# 02. 정렬하기
# score를 기준으로 높은 점수부터 모든 행을 내림차순으로 출력하세요.

SELECT * FROM `score` ORDER BY `score` DESC;

# 03. 조건부 정렬
# 2020년 1학기 기말고사 중 국어 과목의 시험을 가장 잘본 순서로 정렬하여 모든 필드를 출력하세요.

SELECT * FROM `score` 
WHERE `subject` = '국어' AND `year` = 2020 AND `term` = '기말고사' 
ORDER BY `score` DESC;

# 04. 문자열 만들기
# 성적 테이블 전체 결과를 concat을 활용해서 아래와 같은 형태로 출력하세요

SELECT CONCAT(`year`, '년', `semester`, '학기', `term`, `name`, ' - ',  `score`, '점') FROM `score`
WHERE `term` = '중간고사' ;