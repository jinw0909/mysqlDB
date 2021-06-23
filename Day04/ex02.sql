# id, name, license, score
CREATE TABLE `entrant` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(8) NOT NULL,
    `license` varchar(32) NOT NULL,
    `score` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

insert into `entrant` (`name`, `license`, `score`)
values
('신보람', '정보처리기사', 87),
('김바다', '컴퓨터활용능력', 95),
('김태형', '정보처리기사', 99),
('박지민', '컴퓨터활용능력', 68),
('신보람', '컴퓨터활용능력', 78),
('김남준', '정보처리산업기사', 40),
('정호석', '컴퓨터활용능력', 99),
('민윤기', '컴퓨터활용능력', 100),
('김바다', '정보처리산업기사', 78),
('김바다', '정보처리기사', 82);

# Group By
# 같은 이름을 그룹화한다.
SELECT `name` FROM `entrant`
GROUP BY `name`;

SELECT DISTINCT `name` FROM `entrant`;

# 사람별 응시 시험 개수 구하기
SELECT `name`, COUNT(1) FROM `entrant`
GROUP BY `name`;

# 자격증별 점수 합계 구하기
SELECT `license`, SUM(`score`) FROM `entrant`
GROUP BY `license`;

# 자격증별 점수 평균 구하기
SELECT `license`, AVG(`score`) FROM `entrant`
GROUP BY `license`;

# 자격증 시험 2개 이상 응시한 사람의 이름을 출력
# 사람별 그룹화 > 그룹화된 사람별 count() 확인 > count()를 기반으로 조건

SELECT `name`, COUNT(1) FROM `entrant` GROUP BY `name` HAVING COUNT(1) > 1;

# 자격증 종류별 평균 점수가 80이 넘는 자격증 출력
SELECT `license` FROM `entrant` GROUP BY `license` HAVING AVG(`score`) >= 80;