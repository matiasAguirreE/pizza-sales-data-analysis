--Creating tables
--Entities
/*
Create a table named "Orders" in the schema "PizzaShop". The table has three columns: "order_id" as a primary key of integer type, "date" as a non-null date, and "time" as a non-null time.
*/
CREATE TABLE PizzaShop.Orders (
	order_id INTEGER PRIMARY KEY, 
	date DATE NOT NULL,
	time TIME NOT NULL
);

/*
Create a table named "Pizzas" in the schema "PizzaShop". The table has three columns: "pizza_id" as a primary key of string type with a maximum length of 30 characters, "size" as a non-null string with a maximum length of 3 characters, and "price" as a decimal greater than or equal to zero, assuming that there can be promotions with a free product, with a maximum of two digits to the right of the decimal point and a maximum of ten digits to the left of the decimal point, considering that a pizza price will not exceed ten digits.
*/
CREATE TABLE PizzaShop.Pizzas (
	pizza_id VARCHAR(30) PRIMARY KEY, 
	size VARCHAR(3) NOT NULL, 
	price DECIMAL(10, 2) CHECK (price >= 0)
);

/*
Create a table named "Pizza_Types" in the schema "PizzaShop". The table has three columns: "pizza_type_id" as a primary key of string type with a maximum length of 30 characters, "name" as a non-null string with a maximum length of 100 characters, and "category" as a non-null string with a maximum length of 30 characters.
*/
CREATE TABLE PizzaShop.Pizza_Types (
	pizza_type_id VARCHAR(30) PRIMARY KEY, 
	name VARCHAR(100) NOT NULL, 
	category VARCHAR(30) NOT NULL
);

--Relationships
/*
Create a table named "Order_Details" in the schema "PizzaShop". The table has three columns: "order_id" as a foreign key referencing the "Orders" table, "pizza_id" as a foreign key referencing the "Pizzas" table, and "quantity" as an integer greater than or equal to 1.
*/
CREATE TABLE PizzaShop.Order_Details (
	order_id INTEGER REFERENCES Orders(order_id), 
	pizza_id VARCHAR(30) REFERENCES Pizzas(pizza_id), 
	quantity INTEGER CHECK (quantity >= 1)
);

/*
Create a table named "Pizza_Details" in the schema "PizzaShop". The table has two columns: "pizza_id" as a foreign key referencing the "Pizzas" table, and "pizza_type_id" as a foreign key referencing the "Pizza_Types" table.
*/
CREATE TABLE PizzaShop.Pizza_Details (
	pizza_id VARCHAR(30) REFERENCES Pizzas(pizza_id), 
	pizza_type_id VARCHAR(30) REFERENCES Pizza_Types(pizza_type_id)
);