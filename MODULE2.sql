
--MODULE2--
--JOINS--

select * FROM EMP;
SELECT * FROM DEPT;
SELECT * FROM SALGRADE;

--1--
SELECT  EMP.DEPTNO,ENAME, DNAME FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;

--2--
--INSUFFICEINT DATA IN EMP TABLE

--3--
SELECT ENAME, DNAME, GRADE FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO INNER JOIN SALGRADE ON EMP.SAL BETWEEN SALGRADE.LOSAL AND SALGRADE.HISAL;

--4--
SELECT * FROM EMP INNER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO WHERE DNAME='RESEARCH'; 

--5--
SELECT * FROM EMP LEFT OUTER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;

--6--
SELECT * FROM EMP RIGHT OUTER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;

--7--
SELECT * FROM EMP FULL OUTER JOIN DEPT ON EMP.DEPTNO=DEPT.DEPTNO;

--8--
--TABLE DO NOT CONTAINS MANAGER NAME COLUMN--



--DDL--
--1--

--2--
CREATE TABLE EMPLOYEE_2100 
(
  EMPNO NUMBER(10, 0) NOT NULL 
, ENAME VARCHAR2(20 BYTE) NOT NULL 
, DESIGNATION VARCHAR2(30 BYTE) 
, SEX VARCHAR2(6 BYTE) 
, BASIC_SALARY NUMBER(6, 0) 
, DATE_OF_JOINING DATE 
, DEPTNO NUMBER 
, COMMISION NUMBER(10, 0) 
, CONSTRAINT SYS_C00302267 PRIMARY KEY 
  (
    EMPNO 
  )
)