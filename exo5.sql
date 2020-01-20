---- 1 
select max(sal) "Maximum", min(sal) "Minimum", sum(sal) "Sum", round(avg(sal)) "Average" from emp;
---- 2
select job, max(sal) "Maximum", min(sal) "Minimum", sum(sal) "Sum", round(avg(sal)) "Average" from emp group by job;
---- 3
select job, count(ename) from emp group by job;
---- 4
select count(distinct(mgr)) "Number of managers" from emp;
---- 5
select max(sal) - min(sal) as difference from emp;
---- 6
select distinct(mgr), min(sal) from emp where sal > 1000 and mgr is not null group by mgr order by min(sal) desc;
---- 10
select d.dname, d.loc, count(e.deptno) as "Number of People", avg(e.sal) as "Salary" from emp e, dept d where e.deptno = d.deptno group by d.dname, d.loc;
---- 11
