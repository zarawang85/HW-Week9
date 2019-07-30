
------1.List the following details of each employee: employee number, last name, first name, gender, and salary.
select employees.emp_no, employees.last_name, employees.first_name,employees.gender, salaries.salary 
from employees
inner join salaries on employees.emp_no = salaries.emp_no
order by employees.emp_no;

------2.List employees who were hired in 1986.
Select emp_no, last_name,first_name, hire_date from employees where hire_date like '1986%'
order by emp_no;

------3.List the manager of each department with the following information: department number, 
------department name, the manager's employee number, last name, first name, and start and end employment dates.
select A.dept_no, B.dept_name, A.emp_no,C.last_name, C.first_name,A.from_date,A.to_date
from dept_manager A
inner join departments B on A.dept_no = B.dept_no
inner join employees C on A.emp_no = C.emp_no;

------4.List the department of each employee with : emp_no, last name, first name, dept_name.
select A.emp_no,B.last_name, B.first_name,C.dept_name
from dept_emp A
inner join employees B on A.emp_no = B.emp_no
inner join departments C on A.dept_no = C.dept_no
order by A.emp_no;

------5.List all employees whose first name is "Hercules" and last names begin with "B"
select emp_no,first_name,last_name from employees
where first_name = 'Hercules' and last_name like 'B%';

------6.List all employees in Sales dept, including their emp_no, last name, first name, and dept_name.
select * from 
(select A.emp_no,B.last_name, B.first_name,C.dept_name
from dept_emp A
inner join employees B on A.emp_no = B.emp_no
inner join departments C on A.dept_no = C.dept_no
order by A.emp_no) as D
where D.dept_name = 'Sales';

------7.List all employees in the Sales & Development dept, including their emp_no, last name, first name, dept_name.
select * from 
(select A.emp_no,B.last_name, B.first_name,C.dept_name
from dept_emp A
inner join employees B on A.emp_no = B.emp_no
inner join departments C on A.dept_no = C.dept_no
order by A.emp_no) as D
where D.dept_name = 'Sales' or D.dept_name ='Development';

------8.In desc, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as lastname_count from employees
group by last_name
order by lastname_count desc;