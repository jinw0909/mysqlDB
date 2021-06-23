CREATE TABLE `student` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `name` char(8) NOT NULL,
    `address` varchar(50) NOT NULL,
    `department` varchar(8) NOT NULL,
    `introduction` text NOT NULL,
    `number` text NOT NULL,
    INDEX `idx_department` (`department`),
    UNIQUE INDEX `idx_name` (`name`) USING BTREE,
    # 전공, 주소
	INDEX `idx_department_address` (`department`, `address`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

DROP TABLE `student`;

CREATE TABLE `student` (
	`id` int NOT NULL AUTO_INCREMENT primary key,
    `name` char(8) NOT NULL,
    `address` varchar(50) NOT NULL,
    `department` varchar(8) NOT NULL,
    `introduction` text NOT NULL,
    `number` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

ALTER TABLE `student` ADD INDEX `idx_department` (`department`);