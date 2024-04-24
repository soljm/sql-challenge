-- List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary from employees e 
left join salary s on e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
select e.first_name, e.last_name, e.hire_date from employees e
where hire_date >= '1986-01-01' and hire_date < '1987-01-01';

-- List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name.
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name from dept_manager dm
inner join employees e on dm.emp_no = e.emp_no
inner join departments d on d.dept_no = dm.dept_no;

-- 