-------------------------UC1-----------------------
CREATE DATABASE address_book_service;
USE address_book_service;

-----------------------UC2--------------------------
CREATE TABLE address_book (
    
    id INT IDENTITY(1,1) PRIMARY KEY;
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip VARCHAR(10),
    phone_number VARCHAR(20),
    email VARCHAR(100), 
	type VARCHAR(50)
);

-----------------------------UC3----------------------
INSERT INTO address_book (id, first_name, last_name, address, city, state, zip, phone_number, email)
VALUES
    (1, 'Simran', 'Parthi', 'Ravet', 'Panaji', 'Goa', '12345', '123-456-7890', 'simran@example.com'),
    (2, 'Anika', 'Sharma', 'Rajkot', 'Ratanpar', 'Gujrat', '67890', '987-654-3210', 'Anika@example.com'),
    (3, 'Dev', 'Sathi', 'Andheri', 'Mumbai', 'Maharashtra', '54321', '456-789-0123', 'dev@example.com'),
    (4, 'Emily', 'Rana', 'Amritsar', 'Chandigrah', 'Panjab', '87654', '789-012-3456', 'emily@example.com'),
    (5, 'Sharon', 'RayPrakash', 'Wakad', 'Pune', 'Maharashtra', '56789', '012-345-6789', 'sharon@example.com');

------------------------------UC4-----------------------------
UPDATE address_book
SET address = 'Shivajinagar',
    city = 'Pune',
    state = 'Maharashtra',
    zip = '41210',
    phone_number = '982-448-8134',
    email = 'Parthi@example.com'
WHERE first_name = 'Simran' AND last_name = 'Parthi';

--------------------------------UC5--------------------------------
DELETE FROM address_book
WHERE first_name = 'Dev' AND last_name = 'Sathi';

-------------------------------UC6--------------------------------
SELECT * FROM address_book WHERE city = 'Pune';
SELECT * FROM address_book WHERE state = 'Maharashtra';

-----------------------------UC7---------------------------------
SELECT city, state, COUNT(*) AS size FROM address_book GROUP BY city, state;

-------------------------------UC8-----------------------------------
SELECT * FROM address_book WHERE city = 'Pune' ORDER BY first_name, last_name;

-------------------------------UC9-----------------------------------
ALTER TABLE address_book ADD name VARCHAR(50),type VARCHAR(50);
UPDATE address_book SET name = 'Sharon', type = 'Family' WHERE id = 5;

UPDATE address_book SET name = 'Anika', type = 'Friends' WHERE id = 2;

--------------------------UC10--------------------------------------

SELECT type, COUNT(*) AS count FROM address_book GROUP BY type;

--------------------------UC11---------------------------------------

UPDATE address_book SET name = 'Simran', type = 'Family' WHERE id = 1;