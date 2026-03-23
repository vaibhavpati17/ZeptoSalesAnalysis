# 📊 SQL Retail Sales Analysis

![Zepto Sales Analysis](projectimg.png)

## 📌 Project Overview
This project analyzes a zepto sales dataset using **SQL** to uncover business insights such as sales trends, customer behavior, and product performance.

The goal of this project is to demonstrate **data cleaning, data exploration, KPI analysis, and business problem solving using SQL**.

---

## 🎯 Objectives
- Analyze retail sales performance
- Identify top customers and high-performing categories
- Understand customer purchasing patterns
- Generate business insights using SQL queries

---

## 🗂️ Dataset Information
The dataset contains transactional retail sales data with the following fields:

| Column Name | Description |
|-------------|-------------|
| transaction_id | Unique transaction identifier |
| sale_date | Date of sale |
| sale_time | Time of sale |
| customer_id | Unique customer identifier |
| gender | Customer gender |
| age | Customer age |
| category | Product category |
| quantity | Quantity purchased |
| price_per_unit | Price per unit |
| cogs | Cost of goods sold |
| total_sale | Total sale amount |

---

## 🛠️ Tools Used
- MySQL
- MySQL Workbench
- SQL

---

## 🔍 Project Workflow

### 1️⃣ Database Creation
Created a database and table structure to store the retail dataset.

### 2️⃣ Data Cleaning
Checked dataset for missing values and verified data quality.

### 3️⃣ Data Exploration
Explored dataset using SQL queries to understand:
- Total number of transactions
- Unique customers
- Available product categories

### 4️⃣ KPI Analysis
Calculated key performance indicators such as:
- **Total Revenue**
- **Average Order Value**

### 5️⃣ Business Analysis
Solved real-world business questions using SQL queries including:
- Sales on specific dates
- High-value transactions
- Category-wise sales performance
- Customer purchasing behavior
- Top customers by revenue
- Monthly sales trends

---

## 📊 Key SQL Concepts Used
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- Aggregate functions (SUM, AVG, COUNT)
- Window functions (RANK)
- CTE (Common Table Expressions)
- Date functions

---

## 📈 Example Insights
Some insights derived from the dataset:

- Certain categories generate higher revenue compared to others.
- A small number of customers contribute significantly to total sales.
- Sales patterns vary by month and time of day.
- Different customer demographics show different purchasing behaviors.

---

## 📷 Project Screenshots

### Dataset Preview
![Dataset Preview](a/Dataset_preview.png)

### KPI Analysis
![KPI Analysis](a/KPI_analysis.png)

### Category Sales
![Category Sales](a/category_sale.png)

### Top Customers
![Top Customers](a/Top_customer.png)

---

## 📂 Project Structure

```
SQL-Retail-Sales-Analysis
│
├── dataset.csv
├── retail_sales_project.sql
├── dataset_preview.png
├── kpi_analysis.png
├── category_sales.png
├── top_customers.png
└── README.md
```

---

## 🚀 How to Run This Project
1. Open **MySQL Workbench**
2. Create the database
3. Import the dataset CSV file
4. Run the SQL queries provided in the `.sql` file
5. Explore the results

---

## 📌 Conclusion
This project demonstrates how SQL can be used to **clean, analyze, and extract insights from retail sales data**. It highlights essential SQL skills required for a **Data Analyst role**.
