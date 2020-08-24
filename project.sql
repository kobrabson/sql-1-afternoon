person

-- prob 1

CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    age INTEGER,
    height INTEGER,
    city VARCHAR(200),
    favorite_color VARCHAR(200) );

-- prob 2

INSERT INTO person ( name, age, height, city, favorite_color ) 
VALUES 
( 'First Last', 21, 182, 'City', 'Color' );

-- prob 3

SELECT * FROM person ORDER BY height DESC;

-- prob 4

SELECT * FROM person ORDER BY height ASC;

-- prob 5

SELECT * FROM person ORDER BY age DESC;

-- prob 6

SELECT * FROM person
WHERE age > 20;

-- prob 7

SELECT * FROM person
WHERE age > 18;

-- prob 8

SELECT * FROM person
WHERE age < 20 OR age > 30;

-- prob 9

SELECT * FROM person
WHERE age != 27;

-- prob 10

SELECT * FROM person
WHERE favorite_color != 'red';

-- prob 11

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- prob 12

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- prob 13

SELECT * FROM person
WHERE favorite_color IN ( 'orange', 'green', 'blue' );

-- prob 14

SELECT * FROM person
WHERE favorite_color IN ( 'yellow', 'purple' )





-- order

-- prob 1

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quantity INTEGER );

-- prob 2

INSERT INTO orders
( person_id, product_name, product_price, quantity )
VALUES
( 0, 'Product', 2.50, 2 );

-- prob 3

SELECT * FROM orders;

-- prob 4

SELECT SUM(quantity) FROM orders;

-- prob 5

SELECT SUM(product_price * quantity) FROM orders;

-- prob 6

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;


-- Artist


-- prob1

INSERT INTO artist ( name ) VALUES ( 'Kody Brabson' );

-- prob2

SELECT * FROM artist 
ORDER BY name DESC LIMIT 10;

-- prob3

SELECT * FROM artist 
ORDER BY name ASC LIMIT 5;

-- prob4

SELECT * FROM artist 
WHERE name LIKE 'Black%';

-- prob5

SELECT * FROM artist 
WHERE name LIKE '%Black%';




-- employee

-- prob1

SELECT first_name, last_name FROM employee 
WHERE city = 'Calgary'

-- prob2

SELECT MAX(birth_date) from employee;

-- prob3

SELECT MIN(birth_date) from employee;

-- prob4

SELECT * FROM employee WHERE reports_to = 2;

-- prob5

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';




-- invoice

-- prob1

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

-- prob2

SELECT MAX(total) FROM invoice;

-- prob3

SELECT MIN(total) FROM invoice;

-- prob4

SELECT * FROM invoice WHERE total > 5;

-- prob5

SELECT COUNT(*) FROM invoice WHERE total < 5;

-- prob6

SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

-- prob7

SELECT AVG(total) FROM invoice;

-- prob8

SELECT SUM(total) FROM invoice;