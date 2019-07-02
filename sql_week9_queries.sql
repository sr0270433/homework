CREATE TABLE departments(
	dept_no VARCHAR(20),
	dept_name VARCHAR(20)
	);
	
CREATE TABLE dept_employees(
	emp_no VARCHAR(20),
	dept_no VARCHAR(20),
	from_date DATE,
	to_date DATE
	);
	
CREATE TABLE dept_manager(
	dept_no VARCHAR(20),
	emp_no VARCHAR(20),
	from_date DATE,
	to_date DATE
	);
	
CREATE TABLE employees(
	emp_no INT,
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	gender VARCHAR(1),
	hire_date DATE
	);
CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE
	);
	
CREATE TABLE titles(
	emp_no INT,
	title VARCHAR(20),
	from_date DATE,
	to_date DATE
	);

select * from employees

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

select * from employees 
where hire_date > '1985-12-31'

SELECT dept_manager.dept_no,departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date,dept_manager.to_date
FROM dept_manager
INNER JOIN employees ON dept_manager.emp_no=employees.emp_no
inner join departments on departments.dept_no=dept_manager.dept_no

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_employees.dept_no
from employees
inner join dept_employees on employees.emp_no=dept_employees.emp_no
inner join departments on departments.dept_no=dept_employees.dept_no

select * from employees 
where first_name = 'Hercules' and last_name like 'B%'

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_employees.dept_no
from employees
inner join dept_employees on employees.emp_no=dept_employees.emp_no
inner join departments on departments.dept_no=dept_employees.dept_no
and dept_name = 'Sales' or dept_name like 'dev%'

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_employees.dept_no
from employees
inner join dept_employees on employees.emp_no=dept_employees.emp_no
inner join departments on departments.dept_no=dept_employees.dept_no
and dept_name = 'Sales' or dept_name = 'Development'

select last_name, count(*)
from employees
group by last_name
order by 2 desc;
