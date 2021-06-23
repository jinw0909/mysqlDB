SELECT * FROM `user`;

SELECT * FROM `user` WHERE `hobby` LIKE '%독서%';

INSERT INTO `user` (`name`, `yyyymmdd`, `hobby`, `introduce`, `createdAt`, `updatedAt`, `email`)
VALUES ('장진우', '19890909', '독서', '안녕하세요 \n 반가워요', now(), now(), 'lecture@hagulu.com'),
('장진우', '19890909', '노래', '안녕하세요 \n 반가워요', now(), now(), 'lecture@hagulu.com'),
('장진우', '19890909', '영화', '안녕하세요 \n 반가워요', now(), now(), 'lecture@hagulu.com');

SELECT * FROM `user` WHERE `hobby` = '독서';
CREATE TABLE `new_user` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(16) NOT NULL,
    `yyyymmdd` char(8) NOT NULL,
    `email` varchar(32),
    `introduce` text,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# hobby 테이블
CREATE TABLE `hobby` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `userId` int NOT NULL,
    `hobby` varchar(32),
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# 데이터 입력
# 사람정보
INSERT INTO `new_user`
(`name`, `yyyymmdd`, `email`, `introduce`, `createdAt`, `updatedAt`)
VALUES
('장진우', '19890909', 'jinw0909@gmail.com', '안녕하세요. 반갑습니다.', now(), now()),
('존레논', '19890909', 'lennon@naver.com', '안녕하세요. 반갑습니다.', now(), now());

SELECT * FROM `new_user`;

# 취미 정보 입력
INSERT INTO `hobby`
(`userId`, `hobby`, `createdAt`, `updatedAt`)
VALUES
(1, '독서', now(), now()),
(1, '노래', now(), now()),
(1, '영화보기', now(), now()),
(1, '요가', now(), now()),
(2, '사냥하기', now(), now()),
(2, '그루밍', now(), now()),
(2, '스크래치', now(), now()),
(2, '노래', now(), now());

SELECT * FROM `hobby` WHERE `hobby` = '독서';
SELECT * FROM `new_user` WHERE `id` = 1;
