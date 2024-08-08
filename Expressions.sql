CREATE DATABASE MY_STORE;
USE MY_STORE;

CREATE TABLE STORE (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);


INSERT INTO STORE (item_id, item_name, category, price) VALUES
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

	SELECT * FROM STORE

	--Case Expression

	--Practice 1
	SELECT item_name, price,
	CASE price
	WHEN 60 THEN 'Cheap'
	WHEN 200 THEN 'Expensive'
	ELSE 'Cheap-Expensive'
	END AS ProductStatus
	FROM STORE

	--Practice 2
	SELECT item_name, price,
	CASE price
	WHEN 50 THEN 'Cheap'
	WHEN 300 THEN 'Expensive'
	ELSE 'Cheap-Expensive'
	END AS ProductStatus
	FROM STORE

	--Practice 3
	SELECT item_name, price,
	CASE price
	WHEN 200 THEN 'Moderate'
	WHEN 150 THEN 'Cheap'
	ELSE 'Cheap-Expensive'
	END AS ProductStatus
	FROM STORE

	--Practice 4
	SELECT item_name, price,
	CASE price
	WHEN 80 THEN 'Moderate'
	WHEN 50 THEN 'Cheap'
	ELSE 'Cheap-Expensive'
	END AS ProductStatus
	FROM STORE


	--Practice 5
	SELECT item_name, price,
	CASE price
	WHEN 300 THEN 'Moderate'
	WHEN 70 THEN 'Cheap'
	ELSE 'Cheap-Expensive'
	END AS ProductStatus
	FROM STORE

	--Practice 6
	SELECT item_name, price,
	CASE price
	WHEN 180 THEN 'Moderate'
	WHEN 60 THEN 'Cheap'
	ELSE 'Cheap-Expensive'
	END AS ProductStatus
	FROM STORE

	--Practice 7
	SELECT item_name, price,
	CASE price
	WHEN 250 THEN 'Moderate'
	WHEN 50 THEN 'Cheap'
	ELSE 'Cheap-Expensive'
	END AS ProductStatus
	FROM STORE

	--Practice 8
	SELECT item_name, price,
	CASE price
	WHEN 70 THEN 'Moderate'
	WHEN 50 THEN 'Cheap'
	ELSE 'Cheap-Expensive'
	END AS ProductStatus
	FROM STORE

	--Practice 9
	SELECT item_name, price,
	CASE price
	WHEN 180 THEN 'Moderate'
	WHEN 50 THEN 'Cheap'
	ELSE 'Cheap-Expensive'
	END AS ProductStatus
	FROM STORE

	--Practice 10
	SELECT item_name, price,
	CASE price
	WHEN 200 THEN 'Moderate'
	WHEN 250 THEN 'Cheap'
	ELSE 'Cheap-Expensive'
	END AS ProductStatus
	FROM STORE