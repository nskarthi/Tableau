use employees_mod;
select year(de.from_date) as yer, e.gender, count(e.emp_no) as gen
from t_employees e
join t_dept_emp de
on de.emp_no = e.emp_no
group by yer, e.gender
order by yer;

select count(*) from t_dept_emp where year(from_date) = '1986';

select de.emp_no, de.from_date, e.emp_no, e.first_name, e.gender
from t_dept_emp de
join t_employees e
on de.emp_no = e.emp_no
having year(de.from_date) = '1986'
order by de.from_date;