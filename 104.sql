SELECT 
    COUNT(emp_no)
FROM
    employees;  

# Lets count the number of different names in the database
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;  