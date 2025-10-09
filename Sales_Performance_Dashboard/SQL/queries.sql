-- Sales queries for Sales_Performance_Dashboard
SELECT Region, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT Product_Name, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT DATE_FORMAT(Order_Date, '%Y-%m') AS Month, SUM(Sales) AS Monthly_Sales
FROM sales
GROUP BY Month
ORDER BY Month;

SELECT Category, ROUND(SUM(Profit)/SUM(Sales)*100,2) AS Profit_Margin_Percent
FROM sales
GROUP BY Category
ORDER BY Profit_Margin_Percent DESC;
