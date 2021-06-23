# 01 실행 계획 확인
EXPLAIN SELECT * FROM `review` WHERE `userName` = '이정재';

-- 별점이 3.0 이하의 별점 중 이병헌이 작성한 리뷰 리스트
EXPLAIN SELECT * FROM `review` WHERE `userName` = '이병헌' AND `point` <= 3.0;

-- 교촌치킨의 리뷰내용이 있는 리뷰 리스트
EXPLAIN SELECT `storeName`, `review` FROM `review` WHERE `storeName` = '교촌치킨' GROUP BY `review` HAVING `review` IS NOT NULL;

-- 가게별 별점 평균
EXPLAIN SELECT `storeName`, AVG(`point`) FROM `review` GROUP BY `storeName`;

# index 설정
ALTER TABLE `review` ADD INDEX `idx_userName` (`userName`);
ALTER TABLE `review` ADD INDEX `idx_storeName` (`storeName`);
ALTER TABLE `review` ADD INDEX `idx_point` (`point`);
