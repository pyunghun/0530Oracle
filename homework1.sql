-- 1. 춘 대학교의 학과 이름과 계열을 표시

SELECT
       DEPARTMENT_NAME AS 학과명
     , CATEGORY AS 계열
  FROM TB_DEPARTMENT;

-- 2. 학과의 학과 정원을 다음과 같은 형태로 출력

SELECT
       DEPARTMENT_NAME || '의 ' || '정원은 ' || CAPACITY || '명 입니다' AS 학과별정원
  FROM TB_DEPARTMENT;
  
-- 3. 국어국문학과 에 다니는 여학생 중 현재 휴학중인 여학생을 찾아라

SELECT
       STUDENT_NAME
  FROM TB_STUDENT
 WHERE DEPARTMENT_NO = 001
   AND ABSENCE_YN = 'Y';
   
SELECT * FROM TB_STUDENT
WHERE STUDENT_NAME = '송영준';

-- 4. 도서관에서 대출 도서 장기 연체자 들을 찾아 이름을 계시

SELECT
       STUDENT_NAME
  FROM TB_STUDENT
 WHERE STUDENT_NO IN ('A513079', 'A513090', 'A513091', 'A513110', 'A513119');
 
-- 5. 입학정원이 20명 이상 30명 이하인 학과들의 학과 이름과 계열

SELECT
       DEPARTMENT_NAME
     , CATEGORY
  FROM TB_DEPARTMENT
 WHERE CAPACITY > 19
   AND CAPACITY < 31;
   
-- 6. 총장을 제외하고 모든 교수가 소속 학과를 가지고 있다. 총장의 이름은?

SELECT
       PROFESSOR_NAME
  FROM TB_PROFESSOR
 WHERE DEPARTMENT_NO IS NULL; 
 
-- 7. 전산상의 오류로 학과가 지정되지 않은 학생을 찾는 구문

SELECT
       *
  FROM TB_STUDENT
 WHERE DEPARTMENT_NO IS NULL;
 
-- 8. 선수과목 여부 확인 그 과목은 어떤 과목, 과목번호

SELECT
       CLASS_NO
  FROM TB_CLASS
 WHERE PREATTENDING_CLASS_NO IS NOT NULL;
 
-- 9. 춘 대학에는 어떤 계열이 있는 지 조회

SELECT
       DISTINCT CATEGORY
  FROM TB_DEPARTMENT;
 
-- 10. 02학번 전주 거주자들의 모임 휴학을 제외한 학생 출력

SELECT
       STUDENT_NO
     , STUDENT_NAME
     , STUDENT_SSN
  FROM TB_STUDENT
 WHERE SUBSTR(STUDENT_ADDRESS, 1, 2) = '전주'
   AND ABSENCE_YN = 'N'
   AND SUBSTR(ENTRANCE_DATE, 1, 2) = 02;
   
-- 11. 영어영문학과 002, 학생들의 학번 이름 입학년도 빠른 순

SELECT
       STUDENT_NO AS 학번
     , STUDENT_NAME AS 이름
     , TO_CHAR(ENTRANCE_DATE, 'YYYY-MM-DD') AS 입학년도
  FROM TB_STUDENT
 WHERE DEPARTMENT_NO = 002
 ORDER BY ENTRANCE_DATE ASC;
 
 
 
 
 
 