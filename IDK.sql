CREATE TABLE person ( 
    person_id SERIAL PRIMARY KEY, 
    name TEXT, 
    age INTEGER, height INTEGER, 
    city TEXT, 
    favorite_color TEXT 
)
INSERT INTO person 
( name, age, height, city, favorite_color )
VALUES
('bob', 22, 160, 'sandy', 'green')
('Grom', 56, 290, 'greenhouse' 'beige')
('Recent', 37, 130, 'tunisa', 'yellow')
('Tommy', 72, 190, 'libia' 'pink')
('Jane', 15, 10, 'Chad', 'orange')

SELECT height
FROM person
ORDER BY height DESC

SELECT height
FROM person
ORDER BY height 

SELECT age
FROM person
ORDER BY age DESC

SELECT age
FROM person
WHERE age < 20

SELECT age
FROM person
WHERE age = 18

SELECT age
FROM person
WHERE age > 30 AND age < 10

SELECT age
FROM person
WHERE age != 27

SELECT * 
FROM person 
WHERE favorite_color != 'red'

SELECT * 
FROM person 
WHERE favorite_color != 'red' AND favorite_color != 'blue'

SELECT * 
FROM person 
WHERE favorite_color = 'orange' OR favorite_color = 'green'

SELECT * 
FROM person 
WHERE favorite_color IN (orange,green,blue)

SELECT * 
FROM person 
WHERE favorite_color IN (yellow, purple)

CREATE TABLE orders 
( order_id SERIAL PRIMARY KEY, 
person_id INTEGER, 
product_name VARCHAR(200), 
product_price NUMERIC, 
quantity INTEGER 
)

INSERT INTO orders 
( person_id, product_name, product_price, quantity ) 
VALUES
(12, shoes,25,30)
(34, phone,1000,2)
(1,notepad,12,3400)
(12, shoes,25,30)
(34, phone,1000,2)

SELECT * 
FROM orders

SELECT sum(quantity)
FROM orders

SELECT sum(product_price * quantity) 
FROM orders
WHERE person_id = 0

INSERT INTO artist 
( name ) 
VALUES 
( 'YEEZY' )
('Akon')
('Queen')

SELECT * 
FROM artist 
ORDER BY name DESC LIMIT 10

SELECT * 
FROM artist 
ORDER BY name ASC LIMIT 5

SELECT * 
FROM artist 
WHERE name LIKE 'Black%'

SELECT * 
FROM artist 
WHERE name LIKE '%Black%'

SELECT first_name, last_name 
FROM employee 
WHERE city = 'Calgary'

SELECT MAX(birth_date) 
from employee

SELECT MIN(birth_date) 
from employee

SELECT * 
FROM employee 
WHERE reports_to = 2

SELECT COUNT(*) 
FROM employee 
WHERE city = 'Lethbridge'

SELECT COUNT(*) 
FROM invoice
WHERE billing_country = 'USA'

SELECT MAX(total) 
FROM invoice

SELECT MIN(total) 
FROM invoice

SELECT * 
FROM invoice 
WHERE total > 5

SELECT COUNT(*) 
FROM invoice 
WHERE total < 5

SELECT COUNT(*) 
FROM invoice 
WHERE billing_state IN ('CA', 'TX', 'AZ')

SELECT AVG(total) 
FROM invoice

SELECT SUM(total) 
FROM invoice