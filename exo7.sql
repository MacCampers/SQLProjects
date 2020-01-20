---- 1 
select ename, to_char(hiredate, 'DD-MON-YY') as hiredate from emp where deptno in (select deptno from emp where ename = 'BLAKE') and ename <> 'BLAKE';
---- 2
select empno, ename from emp where sal > (select avg(sal) from emp);
---- 3
select empno, ename from emp where deptno in (select deptno from emp where ename like '%T%');
---- 4
select e.ename, d.deptno, e.job from emp e, dept d where d.deptno = e.deptno and d.loc = 'DALLAS';
select ename, deptno, job from emp where deptno in (select deptno from dept where loc = 'DALLAS');
---- 5
select ename, sal from emp where mgr in (select empno from emp where ename = 'KING');
---- 6
select deptno, ename, job from emp where deptno in (select deptno from dept where dname = 'SALES');
---- 7
select deptno, ename, job from emp where deptno in (select deptno from dept where dname = 'SALES');