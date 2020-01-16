select * from dept;
desc dept;
--
desc EMP;
select empno, ename, job, hiredate from emp;
----
select distinct job from emp;
------
select empno "Emp #", ename "Employee", job "Job", hiredate "Hire Date" from emp;
--------
SELECT ename||', '||job as "Employee and Title" from emp;
----------
select empno||', '||ename||', '||job||', '||mgr||', '||hiredate||', '||sal||', '||comm||', '||deptno as the_output from emp;
-----
select string_agg(*, ', ') from emp;