# Pizza Sales Analysis Project

## Table of Contents
1. [Introduction](#introduction)
2. [Project Structure](#project-structure)
3. [Data](#data)
4. [Database Setup](#database-setup)
5. [SQL Queries and Optimizations](#sql-queries-and-optimizations)
6. [Data Analysis and Visualization](#data-analysis-and-visualization)
7. [Conclusion](#conclusion)
8. [Team Members](#team-members)
9. [Acknowledgments](#acknowledgments)

## Introduction

Welcome to our Pizza Sales Analysis Project! This project is part of the Database course at the Universidad de Chile. The main goal of this project is to analyze the sales data of a fictional pizza shop. The data is provided in CSV format, and we will be using SQL to create tables, perform queries, and optimizations. Additionally, we will utilize Matplotlib to visualize the data through various graphs and charts.

## Project Structure

The project is organized into the following directories:

1. `data`: Contains the CSV files with the sales data.
2. `sql`: Contains the SQL scripts for table creation, data insertion, and query optimization.
3. `graphs`: Contains the generated graphs and charts using Matplotlib.
4. `docs`: Documentation and other relevant files.

## Data

The raw data for this project is stored in CSV format. However, some of these files have been modified due to data issues encountered during the analysis. The main datasets include:

1. **orders.csv**: Contains data related to each order, such as the order ID, date and time.
2. **order_details.csv**: Contains details about each order, such as the order details ID, order ID, pizza ID and quantity.
3. **pizzas.csv**: Contains information about each pizza sold, such as pizza ID, pizza type ID, size and price.
4. **pizza_types.csv**: Contains information about each pizza type, such as pizza type ID, name and category.

For viewing the original, unmodified data files, you can access them through the following link: [Pizza Sales](https://www.kaggle.com/datasets/ylenialongo/pizza-sales)

For a more detailed explanation of the modifications made to the data files and any data-related issues encountered, please see the documentation provided in the `docs` directory.

## Database Setup

To set up the database, follow these steps:

1. Ensure you have a compatible SQL database management system installed (e.g., MySQL, PostgreSQL, SQLite).
2. Create a new database for this project.
3. Execute the SQL scripts in the `sql/database-setup` directory in the following order:
   - `01_create_squema.sql`: This script creates the squema to store the tables.
   - `02_create_tables.sql`: This script creates the necessary tables for storing pizzas, orders, order details and pizza types data in Boyce-Codd Normal Form (BCNF).
   - `03_insert_data.sql`: This script populates the tables with data from the CSV files.

## SQL Queries and Optimizations

The `sql` directory also contains several SQL scripts for querying and optimizing the data:

1. `queries`: Contains six SQL queries to retrieve information about pizzas sales.
   - `01_query.sql`: What are the 3 best-selling types of pizza each month?
   - `02_query.sql`: What are the pizzas with the greatest benefits?
   - `03_query.sql`: For how many months was each type of pizza the least sold?
   - `04_query.sql`: In which month did each type of pizza reach its peak sales?
   - `05_query.sql`: Does the pizza shop have a month that is its month with the most sales historically?
   - `06_query.sql`: What is the average number of pizzas sold for each day of the week?
2. `materialized-views`: Contains queries to create a materialized view for each of the six queries.
3. `optimization-analysis`: Contains queries to compare the planning time and the execution time of the optimized query and the non-optimized query.

## Data Analysis and Visualization

Once we have gathered and processed the data using SQL, we will perform data analysis and visualization using Matplotlib. The `graphs` directory will contain various plots and charts that provide insights into the pizza sales trends, popular pizzas, customer behavior, and more.

### Graphs of each query

1. What are the 3 best-selling types of pizza each month?
<img src="https://github.com/matiasAguirreE/pizza-sales-data-analysis/blob/main/docs/media/graph-1.jpg?raw=true" alt="Graph of Query 1" width="1000">

2. What are the pizzas with the greatest benefits?
<img src="https://github.com/matiasAguirreE/pizza-sales-data-analysis/blob/main/docs/media/graph-2.jpg?raw=true" alt="Graph of Query 2" width="1000">

3. For how many months was each type of pizza the least sold?
<img src="https://github.com/matiasAguirreE/pizza-sales-data-analysis/blob/main/docs/media/graph-3.jpg?raw=true" alt="Graph of Query 3" width="1000">

4. In which month did each type of pizza reach its peak sales?
<img src="https://github.com/matiasAguirreE/pizza-sales-data-analysis/blob/main/docs/media/graph-4.jpg?raw=true" alt="Graph of Query 4" width="1000">

5. Does the pizza shop have a month that is its month with the most sales historically?
<img src="https://github.com/matiasAguirreE/pizza-sales-data-analysis/blob/main/docs/media/graph-5.jpg?raw=true" alt="Graph of Query 5" width="1000">

6. What is the average number of pizzas sold for each day of the week?
<img src="https://github.com/matiasAguirreE/pizza-sales-data-analysis/blob/main/docs/media/graph-6.jpg?raw=true" alt="Graph of Query 6" width="1000">

## Conclusion

The analysis reveals that pizza types differ in both sales and profitability. Sales and profits exhibit variations throughout the year and weekdays, with certain months and weekdays experiencing higher demand. Some pizzas demonstrate consistent sales, while others display fluctuations, indicating customer preferences. These insights offer valuable guidance for inventory management, marketing strategies, and enhancing overall profitability in the pizza industry.

## Team Members

- [Matías Aguirre Erazo](https://github.com/matiasAguirreE)
- [Vicente Coronado]()
- [Fernanda C. Gangas]()

## Acknowledgments

We would like to thank the Universidad de Chile and our professors for their guidance and support throughout this project. We also appreciate the open-source community.
