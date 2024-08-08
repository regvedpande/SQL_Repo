CREATE DATABASE GROCERY_STORE;
USE GROCERY_STORE;

CREATE TABLE GROCERY_ITEMS (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);


INSERT INTO GROCERY_ITEMS (item_id, item_name, category, price) VALUES
    (1, 'Apples', 'Fruits', 100.00),
    (2, 'Bread', 'Bakery', 200.00),
    (3, 'Milk', 'Dairy', 150.00),
    (4, 'Eggs', 'Dairy', 50.00),
    (5, 'Chicken Breast', 'Meat', 350.00),
    (6, 'Rice', 'Grains', 250.00),
    (7, 'Tomatoes', 'Vegetables', 80.00),
    (8, 'Cereal', 'Breakfast', 180.00),
    (9, 'Spinach', 'Vegetables', 70.00),
    (10, 'Chocolate', 'Snacks', 60.00);

	SELECT * FROM GROCERY_ITEMS

	--Case Statements

	--Practice 1
	SELECT item_name, price,
	CASE
	WHEN price > 100 THEN 'Moderately Expensive'
	WHEN price < 100 THEN 'Cheap Expensive'
	ELSE 'Cheap'
	END AS ProductStatus
	FROM GROCERY_ITEMS


	--Practice 1
	SELECT item_name, price,
	CASE
	WHEN price > 100 THEN 'Moderately Expensive'
	WHEN price < 100 THEN 'Cheap Expensive'
	ELSE 'Cheap'
	END AS ProductStatus
	FROM GROCERY_ITEMS

	--Practice 2
	SELECT item_name, price,
	CASE
	WHEN price <= 100 THEN 'Cheap'
	WHEN price > 100 THEN 'Bit Expensive'
	WHEN price > 300 THEN 'Luxurious'
	ELSE 'Cheap'
	END AS ProductStatus
	FROM GROCERY_ITEMS

	--Practice 3
	SELECT item_name, price,
	CASE
	WHEN price > 300 THEN 'Expensive'
	WHEN price >= 150 THEN 'Moderately Expensive'
	ELSE 'Cheap'
	END AS ProductStatus
	FROM GROCERY_ITEMS

	--Practice 4
	SELECT item_name, price,
	CASE
	WHEN price > 180 THEN 'Moderately Expensive'
	WHEN price < 300 THEN 'Expensive'
	ELSE 'Cheap'
	END AS ProductStatus
	FROM GROCERY_ITEMS

	--Practice 5
	SELECT item_name, price,
	CASE
	WHEN price <= 250 THEN 'Moderately Expensive'
	WHEN price > 300 THEN 'Expensive'
	ELSE 'Cheap'
	END AS ProductStatus
	FROM GROCERY_ITEMS


	--Practice 6
	SELECT item_name, price,
	CASE 
	WHEN price > 100 AND price < 200 THEN 'Moderate'
	WHEN price > 300 AND price < 350 THEN 'Expensive'
	ELSE 'Cheap'
	END AS ProductStatus
	FROM GROCERY_ITEMS

	--Practice 7
	SELECT item_name, price,
	CASE 
	WHEN price < 70 AND price < 100 THEN 'Cheap'
	WHEN price > 100 AND price < 250 THEN 'Moderate'
	ELSE 'Cheap'
	END AS ProductStatus
	FROM GROCERY_ITEMS

	--Practice 8
	SELECT item_name, price,
	CASE 
	WHEN price > 50 AND price < 100 THEN 'Cheap'
	WHEN price > 100 AND price < 200 THEN 'Moderate'
	ELSE 'Cheap'
	END AS ProductStatus
	FROM GROCERY_ITEMS

	--Practice 9
	SELECT item_name, price,
	CASE 
	WHEN price > 50 AND price < 100 THEN 'Cheap'
	WHEN price > 100 AND price < 200 THEN 'Moderate'
	ELSE 'Cheap'
	END AS ProductStatus
	FROM GROCERY_ITEMS

	--Practice 10
	SELECT item_name, price,
	CASE 
	WHEN price > 300 AND price < 350 THEN 'Expensive'
	WHEN price > 60 AND price < 120 THEN 'Moderate'
	ELSE 'Cheap'
	END AS ProductStatus
	FROM GROCERY_ITEMS
