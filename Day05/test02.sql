SELECT * FROM `score`;

CREATE TABLE `new_student` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(16) NOT NULL,
    `phoneNumber` char(16) NOT NULL,
    `email` varchar(32),
    `dreamJob` varchar(16),
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `new_student`
(`name`, `phoneNumber`, `email`, `dreamJob`, `createdAt`, `updatedAt`)
VALUES
('유재석', 01000001111, 'mc-u@naver.com',  '변호사', now(), now()),
('유재석', 01000001111, 'mc-u@naver.com', '변호사', now(), now()),
('유재석', 01000001111, 'mc-u@naver.com', '변호사', now(), now()),
('조세호', 01011110000, 'mrjo@gmail.com', '모델', now(), now()),
('조세호', 01011110000, 'mrjo@gmail.com', '모델', now(), now()),
('조세호', 01011110000, 'mrjo@gmail.com', '모델', now(), now());

ALTER TABLE `new_student` ADD INDEX `idx_name` (`name`);
DROP INDEX `userId` ON `new_score`;
DROP TABLE `new_score`;
USE java;

CREATE TABLE `new_score` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `studentId` tinyint NOT NULL,
    `year` int NOT NULL,
    `semester` tinyint NOT NULL,
    `term` char(4) NOT NULL,
    `subject` varchar(8) NOT NULL,
    `score` int NOT NULL,
    `createdAt` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` timestamp DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

