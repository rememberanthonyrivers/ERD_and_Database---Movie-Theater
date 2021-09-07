-- Create Customer Table -- 
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	birthdate DATE,
	phone INTEGER
);

select * from customer;

--Now lets create the ORDER table -- 
CREATE TABLE orders(
	order_number SERIAL PRIMARY KEY,
	concession_id INTEGER NOT NULL,
	FOREIGN KEY(concession_id) REFERENCES customer(customer_id)
);

select * from orders;

-- now for the concessions table --
CREATE TABLE concessions(
	consession_id SERIAL,
	size_ VARCHAR(10),
	price_of_food NUMERIC(3,2)
);

select * from concessions;

--and now for the tickets table --
CREATE TABLE tickets(
	ticket_id serial,
	ticket_price numeric(3,2),
	showtime_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES customer(customer_id)
);

select * from tickets;

-- and lastly lets create the movies table --
CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	movie_title numeric(3,2),
	movie_length VARCHAR(10)
);


-- ****************************************** --
-- NOW LETS START ADDING DATA INTO OUT TABLES --
-- ****************************************** --

-- -- lets begin with the customer table -- 
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	birthdate,
	phone
)VALUES(
	'1',
	'Tony',
	'Rivers',
	'1994-12-24',
	'555555'
);
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	birthdate,
	phone
)VALUES(
	'2',
	'Tom',
	'Rivera',
	'1984-3-24',
	'1234569876'
);
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	birthdate,
	phone
)VALUES(
	'3',
	'Toby',
	'Rickers',
	'1974-2-24',
	'5555555'
);

-- now lets insert into our concessions table
INSERT INTO concessions(
	consession_id,
	size_,
	price_of_food
)VALUES(
	'1',
	'Large',
	'3.00'
)
INSERT INTO concessions(
	consession_id,
	size_,
	price_of_food
)VALUES(
	'2',
	'Small',
	'1.00'
)
INSERT INTO concessions(
	consession_id,
	size_,
	price_of_food
)VALUES(
	'3',
	'Medium',
	'2.50'
)

-- now lets insert into our movies table
INSERT INTO movies(
	movie_id,
	movie_title,
	movie_length
)VALUES(
	'1',
	'Superman',
	'2 Hours'
)
INSERT INTO movies(
	movie_id,
	movie_title,
	movie_length
)VALUES(
	'2',
	'Batman',
	'2.5 Hours'
)
INSERT INTO movies(
	movie_id,
	movie_title,
	movie_length
)VALUES(
	'3',
	'King Kong',
	'3 Hours'
)

-- Now lets insert values into the orders table 
INSERT INTO orders(
	order_number,
	concession_id
)VALUES(
	'1',
	'1'
)
INSERT INTO orders(
	order_number,
	concession_id
)VALUES(
	'2',
	'2'
)
INSERT INTO orders(
	order_number,
	concession_id
)VALUES(
	'3',
	'3'
)
	
-- Now lets insert values into the orders table 
INSERT INTO tickets(
	ticket_id,
	showtime_id,
	ticket_price
)VALUES(
	'1',
	'2',
	'10.00'
)
INSERT INTO tickets(
	ticket_id,
	showtime_id,
	ticket_price
)VALUES(
	'2',
	'4',
	'10.00'
)
INSERT INTO tickets(
	ticket_id,
	showtime_id,
	ticket_price
)VALUES(
	'3',
	'7',
	'10.00'
)

-- all of the select statements for each table are as follows 
select * from customer;
select * from concessions;
select * from movies;
SELECT * FROM orders;
SELECT * FROM tickets;

