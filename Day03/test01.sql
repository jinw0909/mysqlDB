SELECT * FROM `score`;

# 01. 점수 업데이트
# id가 5인 행의 점수를 100점으로 수정하세요
 
UPDATE `score` 
SET `score` = 100, `updatedAt` = now()
WHERE `id` = 5; 

# 02. 점수 업데이트
# 이광수의 2019년 2학기 수학성적을 85로 수정하세요

UPDATE `score`
SET `score` = 85
WHERE `name` = '이광수' AND `year` = '2019' AND `semester` = 2 AND `subject` = '수학';

# 03 리뷰내용 추가
# id가 10인 행의 리뷰 내용을 아래 내용으로 추가하세요
# 역시 치킨은 BBQ 인정!

UPDATE `review`
SET `review` = '역시 치킨은 BBQ 인정!'
WHERE `id` = 10;

# 04 일괄 변경
# id 가 8인 행의 별점을 4.5 로 바꾸고 리뷰내용을 아래 내용으로 수정하세요
# 식어도 맛있어요!!

UPDATE `review`
SET `POINT` = 4.5, `review` = '식어도 맛있어요!!'
WHERE `id` = 8;



TRUNCATE TABLE `review`;
