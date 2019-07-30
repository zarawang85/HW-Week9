DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
  dept_no character varying(45) NOT NULL primary key,
  dept_name character varying(45) NOT NULL
);

CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no character varying(45) NOT NULL,
  from_date character varying(45) NOT NULL,
  to_date character varying(45) NOT NULL,
  foreign key (dept_no) references departments(dept_no)
);

CREATE TABLE dept_manager (
  dept_no character varying(45) NOT NULL,
  emp_no integer NOT NULL primary key,
  from_date character varying(45) NOT NULL,
  to_date character varying(45) NOT NULL,
  foreign key (dept_no) references departments(dept_no)
);

CREATE TABLE employees (
  emp_no integer NOT NULL primary key,
  birth_date character varying(45) NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  gender character varying(45) NOT NULL,
  hire_date character varying(45) NOT NULL
);

CREATE TABLE salaries (
  emp_no integer NOT NULL primary key,
  salary integer NOT NULL,
  from_date character varying(45) NOT NULL,
  to_date character varying(45) NOT NULL
);

CREATE TABLE titles (
  emp_no integer NOT NULL,
  title character varying(45) NOT NULL,
  from_date character varying(45) NOT NULL,
  to_date character varying(45) NOT NULL
);
