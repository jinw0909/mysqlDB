# index 가 없는 컬럼 like
# first_name Like
use sakila;
EXPLAIN SELECT * FROM `customer` WHERE `first_name` LIKE 'A%'; # all

EXPLAIN SELECT * FROM `customer` WHERE `last_name` LIKE 'A%'; # range
EXPLAIN SELECT * FROM `customer` WHERE `last_name` LIKE '%A'; # all

EXPLAIN SELECT * FROM `customer` WHERE `customer_id` = 3; # const

# index 없는 컬럼 비교 조건
EXPLAIN SELECT * FROM `film` WHERE `length` = 100; # all

# index 있는 컬럼 비교 조건
EXPLAIN SELECT * FROM `customer` WHERE `store_id` = 2; # ref

# pk를 통한 범위 검색
EXPLAIN SELECT * FROM `film` WHERE `film_id` < 10; # range
EXPLAIN SELECT * FROM `film` WHERE `film_id` < 1000; # range (범위 기반이면 primay key도 range 검색)

ALTER TABLE `film` ADD INDEX `idx_length` (`length`);

EXPLAIN SELECT * FROM `film` WHERE length < 50; # range
EXPLAIN SELECT * FROM `film` WHERE length < 100; # all (옵티마이져가 최적의 검색 방법을 자동으로 선택)

# index 삭제
ALTER TABLE `film` DROP INDEX `idx_length`;
