use employees_mod;

/*Task: Create a visualization that provides a breakdown between the male and female employees
working in the company each year, starting from 1990.*/

select year(de.from_date) as calendar_year, e.gender, count(e.emp_no) as gen
from t_employees e
join t_dept_emp de
on de.emp_no = e.emp_no
group by calendar_year, e.gender
having calendar_year >= 1990
order by calendar_year;

