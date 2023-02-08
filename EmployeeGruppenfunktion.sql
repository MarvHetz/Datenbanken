select d.dname, avg(e.sal) "Durschnittsgehalt" from department d, employee e where d.deptno = e.deptno group by d.dname;

select count(job) from employee where job = 'MANAGER' group by job;

select avg(sal) from employee where 