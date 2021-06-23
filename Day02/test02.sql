CREATE TABLE `score` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(16) NOT NULL,
    `year` decimal(4, 0) NOT NULL,
    `semester` enum('1', '2') NOT NULL, 
    `term` enum('중간고사', '기말고사') NOT NULL,
    `subject` varchar(5) NOT NULL,
    `score` tinyint NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DROP TABLE `score`;
TRUNCATE TABLE `score`;

INSERT INTO `score` 
(`name`, `year`,`semester`,`term`,`subject`, `score`,`createdAt`,`updatedAt`)
VALUES
('이광수',2020,1, '중간고사','국어',80, now(),now()),
('이광수',2020,1, '중간고사','영어',90, now(),now()),
('이광수',2020,1, '중간고사','수학',85, now(),now()),

('조세호',2020,1, '기말고사','국어',70, now(),now()),
('조세호',2020,1, '기말고사','영어',80, now(),now()),
('조세호',2020,1, '기말고사','수학',60, now(),now()),
('유재석',2020,1, '기말고사','국어',90, now(),now()),
('유재석',2020,1, '기말고사','영어',100, now(),now()),
('유재석',2020,1, '기말고사','수학',95, now(),now()),
('이광수',2020,1, '기말고사','국어',80, now(),now()),
('이광수',2020,1, '기말고사','영어',75, now(),now()),
('이광수',2020,1, '기말고사','수학',90, now(),now()),

('조세호',2019,2, '기말고사','국어',85, now(),now()),
('조세호',2019,2, '기말고사','영어',80, now(),now()),
('조세호',2019,2, '기말고사','수학',70, now(),now()),
('유재석',2019,2, '기말고사','국어',95, now(),now()),
('유재석',2019,2, '기말고사','영어',90, now(),now()),
('유재석',2019,2, '기말고사','수학',80, now(),now()),
('이광수',2019,2, '기말고사','국어',75, now(),now()),
('이광수',2019,2, '기말고사','영어',80, now(),now()),
('이광수',2019,2, '기말고사','수학',100, now(),now());

# 01 전체 성적 출력
# SELECT 쿼리를 이용해서 전체 행을 출력하세요
SELECT * FROM `score`;

# 02 컬럼명 붙이기
# 아래와 같이 컬럼명을 변경해서 전체 행을 출력하세요

SELECT `name` AS `이름`, `subject` AS `과목`, `score` AS `성적` FROM `score`;

# 03 특정 학생 성적
# 유재석의 성적 정보를 출력하세요
# 연도, 학기, 고사이름, 과목, 성적 정보만 출력하세요.

SELECT `year`, `semester`, `term`, `subject`, `score` FROM `score` WHERE `name` = '유재석';

# 04 연도 조건
# 2020년 이상인 연도의 전체 필드를 출력하세요

SELECT * FROM `score` WHERE `year` >= 2020;

# 05 복합 조건
# 2020년 1학기 중간고사 전체 필드를 출력하세요.

SELECT * FROM `score` WHERE `term` = '중간고사' AND `semester` = 1 AND `year` = 2020;

# 개수 세기
# 유재석의 90점 이상 성적의 개수를 출력하세요

SELECT count(*) FROM `score` WHERE `name` = '유재석' AND `score` >= 90;