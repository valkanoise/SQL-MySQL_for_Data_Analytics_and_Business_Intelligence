SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND (gender="M" or gender='F');
    
-- Or another way is to make both conditions complete 
SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND gender="M" or last_name = 'Denis' AND gender='F'
;