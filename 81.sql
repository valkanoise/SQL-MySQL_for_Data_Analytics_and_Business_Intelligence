SELECT 
    *
FROM
    employees
WHERE
    first_name = "Cathie"
		OR first_name = "Mark"
        OR first_name = "Nathan";
        
-- It is easier to use the IN operator
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ("Cathie", "Mark", "Nathan") ;

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ("Cathie", "Mark", "Nathan") ;
    
