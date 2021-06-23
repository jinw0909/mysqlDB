# 01. 데이터 삭제
# id가 22인 행의 리뷰를 삭제하세요

DELETE FROM `user` 
WHERE `id` = 22;

# 02. 조건 삭제
# 이정재의 리뷰 중 2점 미만의 리뷰를 삭제하세요

DELETE FROM `review`
WHERE `userName` = '이정재' AND `point` < 2;
