CREATE DATABASE sql_project_p2;

USE sql_project_p2;

DROP TABLE IF EXISTS retail_sales;

CREATE TABLE retail_sales
(
    transaction_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(15),
    age INT,
    category VARCHAR(15),
    quantity INT,
    price_per_unit FLOAT,
    cogs FLOAT,
    total_sale FLOAT
);

-- View First 10 Records
SELECT * 
FROM retail_sales
LIMIT 10;

-- =========================================
-- Data Exploration
-- =========================================

-- Total Records
SELECT COUNT(*) 
FROM retail_sales;

-- Total Unique Customers
SELECT COUNT(DISTINCT customer_id) 
FROM retail_sales;

-- Product Categories
SELECT DISTINCT category 
FROM retail_sales;

-- =========================================
-- Data Cleaning
-- =========================================

-- Check NULL Values

SELECT *
FROM retail_sales
WHERE transaction_id IS NULL;

SELECT *
FROM retail_sales
WHERE sale_date IS NULL;

SELECT *
FROM retail_sales
WHERE sale_time IS NULL;

-- Check All NULL Columns

SELECT *
FROM retail_sales
WHERE 
    transaction_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR gender IS NULL
    OR category IS NULL
    OR quantity IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;
    
-- =========================================
-- KPI Analysis
-- =========================================

-- Total Revenue And Average Order Value

SELECT 
    SUM(total_sale) AS total_revenue,
    AVG(total_sale) AS avg_order_value
FROM retail_sales;

-- =========================================
-- Business Data Analysis Questions
-- =========================================

-- Q1. Retrieve all columns for sales made on '2022-11-05'

SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';

-- Q2. Transactions where category is Clothing and quantity > 10 in Nov-2022

SELECT *
FROM retail_sales
WHERE category = 'Clothing'
AND quantity > 10
AND DATE_FORMAT(sale_date,'%Y-%m') = '2022-11';

-- Q3. Total sales for each category

SELECT 
    category,
    SUM(total_sale) AS net_sale,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category;

-- Q4. Average age of customers who purchased Beauty category

SELECT 
    ROUND(AVG(age),2) AS avg_age
FROM retail_sales
WHERE category = 'Beauty';

-- Q5. Transactions where total_sale > 1000

SELECT *
FROM retail_sales
WHERE total_sale > 1000;

-- Q6. Total transactions by gender in each category

SELECT 
    category,
    gender,
    COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY category, gender
ORDER BY category;

-- Q7. Best selling month in each year

SELECT 
    YEAR(sale_date) AS year,
    MONTH(sale_date) AS month,
    AVG(total_sale) AS avg_sale
FROM retail_sales
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY year, month;
-- Q8. Top 5 customers based on highest total sales

SELECT 
    customer_id,
    SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;

-- Q9. Unique customers who purchased from each category

SELECT 
    category,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales
GROUP BY category;

-- Q10. Number of orders in each shift

WITH hourly_sales AS
(
    SELECT *,
    CASE
        WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift
    FROM retail_sales
)

SELECT 
    shift,
    COUNT(*) AS total_orders
FROM hourly_sales
GROUP BY shift;

-- =========================================
-- End of Project
-- =========================================