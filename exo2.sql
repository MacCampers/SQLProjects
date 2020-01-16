select ename, sal from emp where sal > 2850;
----
select ename, deptno from emp where empno = 7566;
------
select ename, sal from emp where sal not between 1500 AND 2850;
--------
select ename, job, hiredate from emp where hiredate between '20-02-1981' AND '01-05-81' order by hiredate;
----------
select ename, deptno from emp where deptno in (10, 30) order by ename;
------------
select ename as "Employee", sal as "Monthly Salary" from emp where deptno in (10, 30) and sal > 1500;
--------------
select ename, hiredate from emp where hiredate between '01-01-1982' AND '31-12-82';
-----------------
select ename, job from emp where mgr is null;
-------------------
select ename, sal, comm from emp where comm is not null order by sal desc, comm desc;
---------------------
select ename from emp where ename like '__A%';
-----------------------
select ename from emp where ename like '%L%L%' and deptno = 30 or mgr = 7782;
-------------------------
select ename, job, sal from emp where job in ('CLERK', 'ANALYST') and sal not in (1000,3000,5000);
---------------------------
select ename, sal, comm from emp where comm + (1000/sal) > sal;
