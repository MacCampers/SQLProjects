select e.ename, e.deptno, d.dname from emp e, dept d where e.deptno = d.deptno order by d.deptno;
---- 2
select unique(e.job), d.loc from emp e, dept d where d.deptno = 30 and e.deptno = 30;
---- 3
select e.ename, d.dname, d.loc from emp e, dept d where e.deptno = d.deptno and e.comm is not null;
---- 4
select e.ename, d.dname from emp e, dept d where e.deptno = d.deptno and e.ename like '%A%';
---- 5
select e.ename, e.job, e.deptno, d.dname from emp e, dept d where e.deptno = d.deptno and d.loc in ('DALLAS');
---- 6
select e.ename as "Employee", e.empno as "Emp#", em.ename as "Manager", e.mgr as "Mgr#" from emp e, emp em where e.mgr = em.empno;
---- 7
select e.ename as "Employee", e.empno as "Emp#", em.ename as "Manager", e.mgr as "Mgr#" from emp e, emp em where e.mgr = em.empno(+);
---- 8
select e.deptno as departement, e.ename as employee, em.ename as colleague from emp e, emp em where e.deptno = em.deptno and e.empno <> em.empno;
---- 9
desc salgrade;
select e.ename, e.job, d.dname, e.sal, s.grade from emp e, dept d, salgrade s where e.deptno = d.deptno and e.sal between losal and hisal;
---- 10
select e.ename, e.hiredate from emp e, emp blake where blake.ename = 'BLAKE' and blake.hiredate < e.hiredate;
---- 11 
select e.ename as "Employee", to_char(e.hiredate, 'DD-MON-YY') as "Emp Hiredate", emp.ename as "Manager", to_char(emp.hiredate, 'DD-MON-YY') as "Mgr Hiredate" from emp e, emp emp where e.mgr = emp.empno and e.hiredate < emp.hiredate;
---- 12
select rpad(ename, 8)||rpad(' ', sal/100, '*') employee_and_their_salaries from emp order by sal desc;