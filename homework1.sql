-- 1. �� ���б��� �а� �̸��� �迭�� ǥ��

SELECT
       DEPARTMENT_NAME AS �а���
     , CATEGORY AS �迭
  FROM TB_DEPARTMENT;

-- 2. �а��� �а� ������ ������ ���� ���·� ���

SELECT
       DEPARTMENT_NAME || '�� ' || '������ ' || CAPACITY || '�� �Դϴ�' AS �а�������
  FROM TB_DEPARTMENT;
  
-- 3. ������а� �� �ٴϴ� ���л� �� ���� �������� ���л��� ã�ƶ�

SELECT
       STUDENT_NAME
  FROM TB_STUDENT
 WHERE DEPARTMENT_NO = 001
   AND ABSENCE_YN = 'Y';
   
SELECT * FROM TB_STUDENT
WHERE STUDENT_NAME = '�ۿ���';

-- 4. ���������� ���� ���� ��� ��ü�� ���� ã�� �̸��� ���

SELECT
       STUDENT_NAME
  FROM TB_STUDENT
 WHERE STUDENT_NO IN ('A513079', 'A513090', 'A513091', 'A513110', 'A513119');
 
-- 5. ���������� 20�� �̻� 30�� ������ �а����� �а� �̸��� �迭

SELECT
       DEPARTMENT_NAME
     , CATEGORY
  FROM TB_DEPARTMENT
 WHERE CAPACITY > 19
   AND CAPACITY < 31;
   
-- 6. ������ �����ϰ� ��� ������ �Ҽ� �а��� ������ �ִ�. ������ �̸���?

SELECT
       PROFESSOR_NAME
  FROM TB_PROFESSOR
 WHERE DEPARTMENT_NO IS NULL; 
 
-- 7. ������� ������ �а��� �������� ���� �л��� ã�� ����

SELECT
       *
  FROM TB_STUDENT
 WHERE DEPARTMENT_NO IS NULL;
 
-- 8. �������� ���� Ȯ�� �� ������ � ����, �����ȣ

SELECT
       CLASS_NO
  FROM TB_CLASS
 WHERE PREATTENDING_CLASS_NO IS NOT NULL;
 
-- 9. �� ���п��� � �迭�� �ִ� �� ��ȸ

SELECT
       DISTINCT CATEGORY
  FROM TB_DEPARTMENT;
 
-- 10. 02�й� ���� �����ڵ��� ���� ������ ������ �л� ���

SELECT
       STUDENT_NO
     , STUDENT_NAME
     , STUDENT_SSN
  FROM TB_STUDENT
 WHERE SUBSTR(STUDENT_ADDRESS, 1, 2) = '����'
   AND ABSENCE_YN = 'N'
   AND SUBSTR(ENTRANCE_DATE, 1, 2) = 02;
   
-- 11. ������а� 002, �л����� �й� �̸� ���г⵵ ���� ��

SELECT
       STUDENT_NO AS �й�
     , STUDENT_NAME AS �̸�
     , TO_CHAR(ENTRANCE_DATE, 'YYYY-MM-DD') AS ���г⵵
  FROM TB_STUDENT
 WHERE DEPARTMENT_NO = 002
 ORDER BY ENTRANCE_DATE ASC;
 
 
 
 
 
 