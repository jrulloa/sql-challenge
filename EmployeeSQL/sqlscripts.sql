--1. List the following details of each employee: employee number, last name, first name, sex, and salary

Select
	e.emp_no,
	e.first_name,
	e.last_name,
	e.sex,
	s.salary
	
From employees e left join salaries s on e.emp_no = s.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.

Select
	e.first_name as "First Name",
	e.last_name as "Last Name",
	e.hire_date as "Hire Date"
	
From employees e 
Where e.hire_date >= '1996/01/01'

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

Select
	d.dept_no as "Department Number",
	d.dept_name as "Department Name",
	m.emp_no as "Employee Number",
	e.first_name as "First Name",
	e.last_name as "Last Name"
from 
	departments d left join dept_manager m on d.dept_no = m.dept_no
				  left join employees e on m.emp_no = e.emp_no
	
	



--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

Select

	e.emp_no as "Employee Number",
	e.first_name as "First Name",
	e.last_name as "Last Name",
	d.dept_name as "Department Name"
	
From employees e left join dept_employee p  on e.emp_no = p.emp_no
				 join departments d on p.dept_no = d.dept_no



--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select
	e.first_name as "First Name",
	e.last_name as "Last Name",
	e.sex as "Sexo"
	
From employees e 
Where e.first_name = 'Hercules' and  e.last_name like 'B%'


--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select
	
	e.emp_no as "Employee Number",
	e.first_name as "First Name",
	e.last_name as "Last Name",
	d.dept_name as "Department Name"
from 
	departments d left join dept_employee m on d.dept_no = m.dept_no
				  left join employees e on m.emp_no = e.emp_no
where 
	d.dept_name = 'Sales'


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select
	
	e.emp_no as "Employee Number",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	d.dept_name as "Department Name"
from 
	departments d left join dept_employee m on d.dept_no = m.dept_no
				  left join employees e on m.emp_no = e.emp_no
where 
	d.dept_name = 'Sales' or d.dept_name = 'Development'



--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


Select e.last_name, count(e.last_name)

	
From employees e 
group by e.last_name
order by 2 desc;