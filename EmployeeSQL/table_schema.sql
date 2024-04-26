-- create departments table
create table departments (
	dept_no varchar(10) primary key,
	dept_name varchar(30) not null
);
-- create titles tables
create table titles (
	title_id varchar(10) primary key,
	title varchar(30) not null
);
-- create employees table
create table employees (
	emp_no int primary key,
	emp_title_id varchar(10) not null,
	birth_date date,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex char not null,
	hire_date date,
	foreign key (emp_title_id) references titles(title_id) 
);
-- create salary table
create table salary (
	emp_no int primary key,
	salary numeric not null,
	foreign key (emp_no) references employees(emp_no)
);
-- create dept_emp table
create table dept_emp (
	emp_no int,
	dept_no varchar(10),
	primary key (emp_no, dept_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
-- create dept_manager table
create table dept_manager (
	dept_no varchar(10),
	emp_no int,
	primary key (dept_no, emp_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
