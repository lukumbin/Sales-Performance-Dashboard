# Sales Performance Dashboard (Power BI + SQL)
## 📊 Overview
This project analyzes company sales data to track revenue, profit, and performance trends by region, category, and product.  
Datasource: kaggle

## 🧮 Tools & Skills
- Power BI (data modelling, DAX, visualization)
- SQL (data extraction and aggregation)
- Excel (data validation)
- Data Documentation

## ⚙️ Process
1. Extract and clean data using SQL:
   ```sql
   SELECT Region, Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
   FROM Sales
   GROUP BY Region, Category;
   ```
2. Import data into Power BI.
3. Design star schema model (FactSales, DimProduct, DimRegion).
4. Create DAX measures:
   ```DAX
   Profit Margin = DIVIDE(SUM(Sales[Profit]), SUM(Sales[Sales]))
   ```
5. Build visuals (KPIs, trends, top 10 tables).

## 📈 Dashboard Features
- Sales & Profit by Region
- Monthly Sales Trends
- Top Products by Profit Margin
- Interactive Filters (Region, Category)

## 🗂️ Files
- `/data/` — Dataset  
- `/SQL/` — SQL queries used for data prep  
- `/PowerBI/` — Power BI dashboard file  

## 📘 Outcome
The dashboard enables users to explore business performance interactively and identify revenue growth opportunities.
