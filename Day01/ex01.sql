CREATE database jinwoo;
USE jinwoo;

use `jinwoo`;

/*
	테이블 만들기
	사람 정보 테이블 만들기
	id, 이름, 생년월일, 취미, 자기소개, 작성시간, 수정시간
*/  
CREATE TABLE `person` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(16) NOT NULL,
    `birth` int NOT NULL,
    `hobby` varchar(64) NOT NULL,
    `introduce` text,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESC `person`;
DROP TABLE `person`;

# 테이블 수정하기

# 테이블 이름 변경
ALTER TABLE `person` RENAME `user`;

# email 컬럼 추가
ALTER TABLE `user` ADD COLUMN `email` varchar(16) NULL;

# email 컬럼 16 -> 32 늘리기
ALTER TABLE `user` MODIFY COLUMN `email` varchar(32) NULL;

# birth 컬럼 이름변경
ALTER TABLE `user`
CHANGE COLUMN `birth` `yyyymmdd` varchar(16) NOT NULL;

