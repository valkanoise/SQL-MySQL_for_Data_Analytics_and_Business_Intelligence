SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN '66000' AND '70000';
    
SELECT 
    *
FROM
    salaries
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';
    
SELECT 
   dept_name 
FROM
    departments
WHERE
    dept_no BETWEEN 'D003' AND 'D006';