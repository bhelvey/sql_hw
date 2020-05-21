SELECT 	e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM 	employees e
JOIN 	salaries s
ON 		e.emp_no = s.emp_no;


SELECT 			*
FROM 			employees
WHERE EXTRACT	(year from hire_date) = 1986;


SELECT	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM 	employees e
JOIN 	dept_emp de ON e.emp_no = de.emp_no
JOIN 	departments d ON de.dept_no = d.dept_no


SELECT 	d.dept_no, d.dept_name,dm.emp_no, e.last_name, e.first_name
FROM 	departments d 
JOIN 	dept_manager dm ON d.dept_no = dm.dept_no
JOIN 	employees e ON dm.emp_no = e.emp_no


SELECT	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM 	employees e
JOIN 	dept_emp de ON e.emp_no = de.emp_no
JOIN 	departments d ON de.dept_no = d.dept_no


SELECT	*
FROM 	employees e
JOIN 	dept_emp de ON e.emp_no = de.emp_no
JOIN 	departments d ON de.dept_no = d.dept_no


SELECT	*
FROM 	employees
WHERE 	first_name = 'Hercules' 
AND 	last_name LIKE 'B%';


SELECT	e.emp_no, e.last_name, e.first_name, d.dept_name
FROM	employees e
JOIN	dept_emp de ON e.emp_no = de.emp_no
JOIN	departments d ON de.dept_no = d.dept_no
WHERE	d.dept_name = 'Sales'
OR		d.dept_name = 'Development'


SELECT		last_name, COUNT(last_name)
FROM 		employees
GROUP BY	last_name
ORDER BY COUNT DESC

