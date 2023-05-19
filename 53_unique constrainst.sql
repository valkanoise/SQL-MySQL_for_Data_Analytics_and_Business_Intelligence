USE sales;

# Lets create database defining fields, primary key + unique key constraints
CREATE TABLE customers (
customer_id int,
first_name varchar(255),
last_name varchar(255),
email_address varchar(255),
number_of_complaints int,
primary key (customer_id),
unique key (email_address)
);

drop table customers;

# Lets create database defining only fields
CREATE TABLE customers (
customer_id int,
first_name varchar(255),
last_name varchar(255),
email_address varchar(255),
number_of_complaints int,
primary key (customer_id)
);

# As the table has already been created, now we can alter it an add unique key constraints
alter table customers
add unique key(email_address);

# Remove field that has an unique key constraint
alter table customers
drop index email_address;
