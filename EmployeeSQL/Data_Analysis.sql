--- List the employee number, last name, first name, sex, and salary of each employee

select last_name , first_name , sex , salary , s.emp_no
from employee e 
inner join salaries s 
on e.emp_no = s.emp_no ;

--- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)

select first_name , last_name , hire_date  
from employee e 
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date;

--- List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)

select dm.dept_no, d.dept_name, dm.emp_no , e.last_name , e.first_name 
from dept_manager dm 
inner join department d 
on dm.dept_no = d.dept_no
inner join employee e 
on dm.emp_no  = e.emp_no; 

--- List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)

select de.dept_no , e.emp_no , e.last_name, e.first_name , d.dept_name 
from employee e 
inner join dept_emp de 
on e.emp_no = de.emp_no 
inner join department d 
on d.dept_no = de.dept_no ;

--- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)

select first_name, last_name, sex
from employee e 
where
first_name = 'Hercules'
and 
last_name like'B%';

--- List each employee in the Sales department, including their employee number, last name, and first name (2 points)

select  e.emp_no , e.last_name, e.first_name , d.dept_name 
from employee e 
inner join dept_emp de 
on e.emp_no = de.emp_no 
inner join department d 
on d.dept_no = de.dept_no 
where d.dept_name = 'Sales';


--- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)

select  e.emp_no , e.last_name, e.first_name , d.dept_name 
from employee e 
inner join dept_emp de 
on e.emp_no = de.emp_no 
inner join department d 
on d.dept_no = de.dept_no 
where d.dept_name = 'Sales'
or
d.dept_name = 'Development';

--- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)

select last_name, count(last_name) as frequency
from employee e 
group by last_name 
order by frequency desc;


