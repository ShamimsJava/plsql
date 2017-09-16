/*=================================================
Chapter 6
Md. Shamim Sarker
===================================================*/


--page number 5
select last_name, salary
from employees
where salary > (
	select salary
	from employees
	where last_name = 'Abel'
	);


/*
--page number 8
select last_name, job_id
from employees
where job_id = (
	select job_id
	from employees
	where employee_id = 141
	);
*/

/*
--page number 9
select last_name, job_id, salary
from employees
where job_id = (
	select job_id
	from employees
	where employee_id = 141
	)
and salary > (
	select salary
	from employees
	where employee_id = 143
	);
*/

/*
--page number 10
select last_name, job_id, salary
from employees
where salary = (
	select min(salary)
	from employees
	);
*/

/*
--page number 11
select department_id, min(salary)
from employees
group by department_id
having min(salary) > (
	select min(salary)
	from employees
	where department_id = 50
	);
*/

/*
--page number 14
select last_name, salary, department_id
from employees
where salary in (
	select min(salary)
	from employees
	group by department_id
	);
*/

/*
--page number 14
select employee_id, last_name, job_id, salary
from employees
where salary < any (
	select salary
	from employees
	where job_id = 'IT_PROG'
	)
and job_id != 'IT_PROG';
*/

/*
--page number 14
select employee_id, last_name, job_id, salary
from employees
where salary < all (
	select salary
	from employees
	where job_id = 'IT_PROG'
	)
and job_id != 'IT_PROG';
*/

/*
--page number 17
select last_name, salary, department_id
from employees
where salary not in (
	select min(salary)
	from employees
	);
*/

/*
--page number 17
select emp.last_name
from employees emp
where emp.employee_id not in(
	select mgr.manager_id
	from employees mgr
	);
*/


/*=======================================================
Chapter 7
Md. Shamim Sarker
=========================================================*/

/*
--page number  9
select employee_id, job_id
from employees
union
select employee_id, job_id
from job_history;
*/

/*
--page number  12
select employee_id, job_id
from employees
union all
select employee_id, job_id
from job_history;
*/

/*
--page number  14
select employee_id, job_id
from employees
intersect
select employee_id, job_id
from job_history;
*/

/*
--page number  16
select employee_id, job_id
from employees
minus
select employee_id, job_id
from job_history;
*/


