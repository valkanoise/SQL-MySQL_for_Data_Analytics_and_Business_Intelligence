SELECT 
    COUNT(emp_no)
FROM
    salaries
where 
	salary>=100000;
    
    
SELECT 
	COUNT(*)
FROM
    titles
WHERE 
	title='manager';

-- Another option

SELECT 
	COUNT(*)
FROM
    dept_manager;