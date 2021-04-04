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

/*Task: Average Salary of Male vs Female by Year*/
select year(s.from_date) as calendar_year, e.gender, avg(s.salary)
from t_employees e
join t_salaries s
on e.emp_no = s.emp_no
group by calendar_year, e.gender
order by calendar_year;

/*Task: Average Salary of Male vs Female on a specific Year*/
select e.gender, avg(s.salary)
from t_salaries s
join t_employees e
on e.emp_no = s.emp_no
where year(s.from_date) = 1990
group by e.gender;

/*Task: Average Salary of Male vs Female by Year by Department*/
select year(s.from_date) as calendar_year, d.dept_name as dept, e.gender, avg(s.salary)
from t_employees e
join t_salaries s
on e.emp_no = s.emp_no
join t_dept_emp de
on s.emp_no = de.emp_no
join t_departments d
on de.dept_no = d.dept_no
group by calendar_year, dept, e.gender
order by calendar_year;