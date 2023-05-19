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

# 54

use sales;

drop table customers;

CREATE TABLE customers(
	customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY(customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M','F') AFTER last_name;

	
INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

# 55

# Lets define a default constraint for the number_of_complaints field

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;
 
 # Lets try if the default value works
 INSERT INTO customers(first_name,last_name,gender)
 VALUES('Peter', 'Figaro','M');
 
 SELECT * FROM customers;
 
 # Drop default constraint
 
 ALTER TABLE customers
 ALTER COLUMN number_of_complaints DROP DEFAULT;
 
 # 56
 
 CREATE TABLE companies(
	company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headqueartes_phone_number VARCHAR(255),
PRIMARY KEY (company_id),
UNIQUE KEY (headqueartes_phone_number)
);

DROP TABLE companies;

# 58

CREATE TABLE companies(
	company_id INT AUTO_INCREMENT,
    company_name VARCHAR(255) NOT NULL,
    headqueartes_phone_number VARCHAR(255),
PRIMARY KEY (company_id)
);

# Modify contraint from not null to null
ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;

ALTER TABLE companies
MODIFY company_name VARCHAR(255) NOT NULL;

# If we insert data without company name (not null) we should get an error

INSERT INTO companies (headqueartes_phone_number)
VALUES ('+491111');

# Fix
INSERT INTO companies (company_name, headqueartes_phone_number)
VALUES ('A','+491111');

SELECT * FROM companies;

# 59
# Add null constraint
ALTER TABLE companies
MODIFY headqueartes_phone_number VARCHAR(255) NULL;

# Change null contraint to not null
ALTER TABLE companies
CHANGE COLUMN headqueartes_phone_number headqueartes_phone_number VARCHAR(255) NOT NULL;

# Another option
ALTER TABLE companies
MODIFY headqueartes_phone_number VARCHAR(255) NOT NULL;








