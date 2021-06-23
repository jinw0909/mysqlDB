# 01 문자열 찾기
# 맛있으면짖는개의 리뷰중 왈왈로 시작하는 리뷰의 전체 필드 정보를 출력하세요.
USE jinwoo;
SELECT * FROM `review` WHERE `review` LIKE '왈왈%' AND `userName` = '맛있으면짖는개' ;

# 02 정렬하기

# 03 별점 높은순
SELECT * FROM `review` WHERE `storeName` = '교촌치킨' ORDER BY `point` DESC; 

# 04 가장 낮은 별점
SELECT `userName`, `storeName` FROM `review` ORDER BY `point` LIMIT 1;