# Create database
 CREATE DATABASE IF NOT EXISTS sales;
 
 # Select the database to manipulate and apply our queries
 USE sales;
 
 # Create the table sales and some fields
  CREATE TABLE sales
  (
	purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);

	CREATE TABLE customers
	(
	customer_id INT, 
    first_name VARCHAR(255), 
    last_name VARCHAR(255), 
    email_address VARCHAR(255), 
    number_of_complaints INT
);

# Two ways of applying queries over sql objects
 # a- Choosing the default database to apply queries
 USE sales;
 SELECT * FROM sales;
 # b- Using the dot operator 
 SELECT * FROM sales.sales;

# Delete a table and its contents;
DROP TABLE sales;
 