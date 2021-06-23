# 한 행 추가
# user 테이블

INSERT INTO `user`
(
	`name`,
    `yyyymmdd`,
    `hobby`,
    `introduce`,
    `createdAt`,
    `updatedAt`,
    `email`
) VALUE (
	'장진우',
    '19890909',
    '독서, 노래, 영화',
    '안녕하세요 \n 저는 장진우입니다.',
    now(),
    now(),
    'jinw0909@gmail.com'
);
