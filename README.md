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
9. [License](#license)
10. [Acknowledgments](#acknowledgments)

## Introduction

Welcome to our Pizza Sales Analysis Project! This project is part of the Database course at the Universidad de Chile. The main goal of this project is to analyze the sales data of a fictional pizza shop. The data is provided in CSV format, and we will be using SQL to create tables, perform queries, and optimizations. Additionally, we will utilize Matplotlib to visualize the data through various graphs and charts.

## Project Structure

The project is organized into the following directories:

1. **data**: Contains the CSV files with the sales data.
2. **sql**: Contains the SQL scripts for table creation, data insertion, and query optimization.
3. **graphs**: Contains the generated graphs and charts using Matplotlib.
4. **docs**: Documentation and other relevant files.

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
3. Execute the SQL scripts in the `sql` directory in the following order:
   - `01_create_tables.sql`: This script creates the necessary tables for storing pizza, order, and customer data.
   - `02_insert_data.sql`: This script populates the tables with data from the CSV files.

## SQL Queries and Optimizations

The `sql` directory also contains several SQL scripts for querying and optimizing the data:

1. `03_basic_queries.sql`: Contains basic SQL queries to retrieve information about pizzas, orders, and customers.
2. `04_aggregate_queries.sql`: Contains queries that use aggregate functions to calculate statistics such as total sales and average order value.
3. `05_indexing_optimizations.sql`: Demonstrates the creation of indexes to improve query performance.
4. `06_query_optimizations.sql`: Includes optimized versions of some previous queries to showcase performance improvements.

## Data Analysis and Visualization

Once we have gathered and processed the data using SQL, we will perform data analysis and visualization using Matplotlib. The `graphs` directory will contain various plots and charts that provide insights into the pizza sales trends, popular pizzas, customer behavior, and more.

## Conclusion

This project aims to provide a comprehensive analysis of the pizza sales data for the fictional pizzeria. By leveraging SQL for data manipulation and optimizations, as well as Matplotlib for data visualization, we hope to gain valuable insights into the business and customer patterns. Feel free to explore the code, data, and results in their respective directories.

## Team Members

- [Matías Aguirre Erazo](https://github.com/matiasAguirreE)
- [Vicente Coronado]()
- [Fernanda C. Gangas]()

## Acknowledgments

We would like to thank the Universidad de Chile and our professors for their guidance and support throughout this project. We also appreciate the open-source community.
