select sysdate "date" from dual;
--
select empno, ename, sal, round(sal * 1.15) "New Salary" from emp;
----
select empno, ename, sal, round(sal * 1.15) as "New Salary", round(sal * 1.15) - sal as "Increase" from emp;
------
select ename, hiredate, to_char(next_day(add_months(hiredate, 6), 'LUNDI'), 'Day, "the" Ddspth "of" Month YYYY') as review from emp;
--------
select ename, round(months_between(sysdate, hiredate)) as months_worked from emp order by months_worked;
----------
select ename || ' earns ' || to_char(sal,'$99,999') || ' monthly but wants ' || to_char(sal * 3,'$99,999') from emp;
------------
select ename, lpad(sal, 15, '$') as "Salary" from emp;
--------------
select initcap(ename) as "Name", length(ename) as "Length" from emp where ename like 'J%' or ename like 'A%' or ename like 'M%';
----------------
select ename, hiredate,to_char(hiredate, 'DAY') as day from emp order by to_char(hiredate, 'd');
------------------
select ename, nvl(to_char(comm), 'no commision') comm from emp;