--Insert data

--Entities
--Orders
/*
Load the data from the "orders.csv" file into the "Orders" table of the database.
*/
\copy orders (order_id, date, time) FROM 'orders.csv' DELIMITER ',' CSV HEADER;

--Pizzas
/*
First, we create a temporary table with the same data types as the "pizzas.csv" file.
*/
CREATE TABLE tabla_temporal (pizza_id VARCHAR(30), pizza_type_id VARCHAR(30), size VARCHAR(3), price numeric(10,2));

/*
Then, we load the data from the "pizzas.csv" file into the temporary table.
*/
\copy tabla_temporal (pizza_id, pizza_type_id, size, price) FROM 'pizzas.csv' DELIMITER ',' CSV HEADER;

/*
Then, we copy the data that we want to keep from the temporary table to the "Pizzas" table.
*/
INSERT INTO pizzas (pizza_id, size, price)
SELECT pizza_id, size, price
FROM tabla_temporal;

/*
And finally, we delete the temporary table.
*/
DROP TABLE tabla_temporal;

--Pizza_types
/*
Load the data from the "pizza_types.csv" file into the "Pizza_Types" table of the database.
*/
\copy pizza_types (pizza_type_id, name, category) FROM 'pizza_types.csv' DELIMITER ',' CSV HEADER;

--Relationships
--Order_details
/*
First, we create a temporary table with the same data types as the "order_details.csv" file.
*/
CREATE TABLE tabla_temporal (order_details_id INTEGER, order_id INTEGER, pizza_id VARCHAR(30), quantity INTEGER);

/*
Then, we load the data from the "order_details.csv" file into the temporary table.
*/
\copy tabla_temporal (order_details_id, order_id, pizza_id, quantity) FROM 'order_details.csv' DELIMITER ',' CSV HEADER;

/*
Then, we copy the data that we want to keep from the temporary table to the "Order_Details" table.
*/
INSERT INTO order_details (order_id, pizza_id, quantity)
SELECT order_id, pizza_id, quantity
FROM tabla_temporal;

/*
And finally, we delete the temporary table.
*/
DROP TABLE tabla_temporal;

--Pizza_details
/*
First, we create a temporary table with the same data types as the "pizzas.csv" file.
*/
CREATE TABLE tabla_temporal (pizza_id VARCHAR(30), pizza_type_id VARCHAR(30), size VARCHAR(3), price numeric(10,2));

/*
Then, we load the data from the "pizzas.csv" file into the temporary table.
*/
\copy tabla_temporal (pizza_id, pizza_type_id, size, price) FROM 'pizzas.csv' DELIMITER ',' CSV HEADER;

/*
Then, we copy the data that we want to keep from the temporary table to the "Pizza_Details" table.
*/
INSERT INTO pizza_details (pizza_id, pizza_type_id)
SELECT pizza_id, pizza_type_id
FROM tabla_temporal;

/*
And finally, we delete the temporary table.
*/
DROP TABLE tabla_temporal;