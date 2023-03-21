
/** Grocery List:
Bananas (4)
Peanut Butter (1)
Dark Chocolate Bar (2)
**/

CREATE TABLE grocery_list (
	id INTEGER PRIMARY KEY,
	name VARCHAR(100), 
	quantity INTEGER
);

INSERT INTO grocery_list 
	VALUES (1, 'Bananas', 4);
INSERT INTO grocery_list 
	VALUES (2, 'Peanut Butter', 1);
INSERT INTO grocery_list 
	VALUES (3, 'Dark Chocolate Bars', 2);
	
SELECT * FROM grocery_list

/** Top Books of All Time from Goodreads
"To Kill a Mockingbird" by Harper Lee - 4.28/5
"The Great Gatsby" by F. Scott Fitzgerald - 3.91/5
"1984" by George Orwell - 4.20/5
"One Hundred Years of Solitude" by Gabriel Garcia Marquez - 4.10/5
"The Catcher in the Rye" by J.D. Salinger - 3.80/5
"Pride and Prejudice" by Jane Austen - 4.26/5
"Moby-Dick" by Herman Melville - 3.48/5
"Hamlet" by William Shakespeare - 4.02/5
"The Odyssey" by Homer - 3.78/5
"The Divine Comedy" by Dante Alighieri - 4.07/5
**/

CREATE TABLE Top_Books (
	id SERIAL NOT NULL,
	title VARCHAR(250) NOT NULL,
	author VARCHAR(250) NOT NULL,
	rating DECIMAL NOT NULL
);

ALTER TABLE Top_Books ADD CONSTRAINT id
  PRIMARY KEY (id)
;

INSERT INTO Top_Books (title, author, rating) 
	VALUES('To Kill a Mockingbird','Harper Lee',4.28);
INSERT INTO Top_Books (title, author, rating) 
	VALUES('The Great Gatsby','F. Scott Fitzgerald',3.91);
INSERT INTO Top_Books (title, author, rating) 
	VALUES('1984','George Orwell',4.2);
INSERT INTO Top_Books (title, author, rating) 
	VALUES('One Hundred Years of Solitude','Gabriel Garcia Marquez',4.1);
INSERT INTO Top_Books (title, author, rating) 
	VALUES('The Catcher in the Rye','J.D. Salinger',3.8);
INSERT INTO Top_Books (title, author, rating) 
	VALUES('Pride and Prejudice','Jane Austen',4.26);
INSERT INTO Top_Books (title, author, rating) 
	VALUES('Moby-Dick','Herman Melville',3.48);
INSERT INTO Top_Books (title, author, rating) 
	VALUES('Hamlet','William Shakespeare',4.02);
INSERT INTO Top_Books (title, author, rating) 
	VALUES('The Odyssey','Homer',3.78);
INSERT INTO Top_Books (title, author, rating) 
	VALUES('The Divine Comedy','Dante Alighieri',4.07);
	
SELECT * FROM Top_Books


CREATE TABLE movies (id INTEGER PRIMARY KEY, name VARCHAR(50), release_year INTEGER);
INSERT INTO movies VALUES (1, 'Avatar', 2009);
INSERT INTO movies VALUES (2, 'Titanic', 1997);
INSERT INTO movies VALUES (3, 'Star Wars: Episode IV - A New Hope', 1977);
INSERT INTO movies VALUES (4, 'Shrek 2', 2004);
INSERT INTO movies VALUES (5, 'The Lion King', 1994);
INSERT INTO movies VALUES (6, 'Disney"s Up', 2009);
 
SELECT * FROM movies;

SELECT * FROM movies 
    WHERE release_year < 2000
    ORDER BY release_year;
	
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, 'Wash the dishes', 15);
INSERT INTO todo_list VALUES (2, 'vacuuming', 20);
INSERT INTO todo_list VALUES (3, 'Learn some stuff on KA', 30);
INSERT INTO todo_list VALUES (4, 'make bed', 10);

SELECT SUM(minutes)  FROM todo_list 



/** Clothing Item List:
Classic White T-Shirt - $15
Blue Denim Jacket - $60
Black Skinny Jeans - $45
Gray Hoodie - $30
Red Plaid Flannel Shirt - $25
Beige Sweater - $40
Yellow Raincoat - $50
Pink Blouse - $35
Green Cargo Pants - $55
Purple Maxi Dress - $75
Brown Leather Jacket - $100
Navy Blue Polo Shirt - $20
Burgundy Cardigan - $45
Teal Tank Top - $20
Orange Scarf - $15
**/

CREATE TABLE product_offering(
id INTEGER PRIMARY KEY NOT NULL,
product_name VARCHAR(200) NOT NULL,
color VARCHAR(200) NOT NULL,
price INTEGER NOT NULL
);

INSERT INTO product_offering(id, product_name, color, price)
VALUES
(1, 'Classic T-Shirt', 'White', 15),
(2, 'Classic T-Shirt', 'Blue', 15),
(3, 'Classic T-Shirt', 'Black', 15),
(4, 'Cargo Pants', 'Green', 55),
(5, 'Cargo Pants', 'Black', 55),
(6, 'Cargo Pants', 'Khaki', 55),
(7, 'Maxi Dress', 'Purple', 75),
(8, 'Maxi Dress', 'Orange', 75),
(9, 'Maxi Dress', 'Teal', 75),
(10, 'Cardigan', 'Burgundy', 45),
(11, 'Cardigan', 'Navy', 45),
(12, 'Cardigan', 'Beige', 45),
(13, 'Blouse', 'Teal', 35),
(14, 'Blouse', 'Gold', 35),
(15, 'Blouse', 'White', 35);
SELECT * FROM product_offering;

SELECT SUM(price) FROM product_offering;

SELECT * FROM product_offering
WHERE color = 'White'
ORDER BY price ASC;