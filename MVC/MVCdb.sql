SELECT * FROM hr;
SELECT * FROM hr_department;
SELECT * FROM hr_position;

DELETE FROM hr;
ALTER TABLE hr AUTO_INCREMENT = 1;

INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("홍길동", 1, 2);
INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("존레논", 2, 3);
INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("빈센조", 3, 3);
INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("스누피", 4, 1);
INSERT INTO hr (hr_name, hr_department, hr_position) VALUES ("피카츄", 1, 1);

/*
	<일대일 관계에서 JOIN>
	SELECT 컬럼 FROM 테이블1 t1(별칭)
	JOIN 테이블2 t2(별칭)
	ON t1.컬럼명 = t2.컬럼명
    WHERE t2.컬럼명 = 값;    
*/

SELECT hr.*, d.* FROM hr hr
JOIN hr_department d
ON hr.hr_department = d.department_idx
WHERE d.department_name = "디자인팀";

/*
	<일대다 관계에서 JOIN>
	SELECT 컬럼 FROM 테이블1 t1(별칭)
	JOIN 테이블2 t2(별칭)
	ON t1.컬럼명 = t2.컬럼명
    JOIN 테이블3 t3(별칭)
    ON t1.컬럼 = t3.컬럼
    WHERE ~~~~    
*/

SELECT * FROM hr hr
JOIN hr_department d
ON hr.hr_department = d.department_idx
JOIN hr_position p
ON hr.hr_position = p.position_idx;

-- 직급이 '차장'인 직원의 이름과 직급을 조회
SELECT * FROM hr hr
JOIN hr_position p
ON hr.hr_position = p.position_idx
JOIN hr_department d
ON hr.hr_department = d.department_idx
WHERE p.position_name = '차장';

-- 모든 직원의 이름, 부서, 직급을 낮은 직급부터 출력
SELECT * FROM hr hr
JOIN hr_department d
ON hr.hr_department = d.department_idx
JOIN hr_position p
ON hr.hr_position = p.position_idx
ORDER BY p.position_idx; 

-- 디자인팀 사원인 직원의 이름 부서 직급 출력
SELECT hr.hr_name, d.department_name, p.position_name from hr hr
JOIN hr_department d
ON hr.hr_department = d.department_idx
JOIN hr_position p
ON hr.hr_position = p.position_idx
WHERE d.department_name = "디자인" AND p.position_name = "사원"
ORDER BY p.position_idx DESC;

-- 개발팀에 새로 들어온 홍길동 대리를 hr테이블에 추가(서브쿼리 사용)
/*
	INSERT INTO hr(hr_name, hr_department, hr_position) 
    VALUES("홍길동", 
    (SELECT department_idx FROM hr_department WHERE department_name="개발"), 
    (SELECT position_idx FROM hr_position WHERE position_name="대리"));
    
    ("홍길동", 1, 5);
*/

INSERT INTO hr(hr_name, hr_department, hr_position) 
VALUES("치히로", 
(SELECT department_idx FROM hr_department WHERE department_name="기획"), 
(SELECT position_idx FROM hr_position WHERE position_name="과장"));

