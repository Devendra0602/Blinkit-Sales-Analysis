-- ========================
-- Blinkit Sales Analysis 
-- ========================

-- View Data
SELECT * 
FROM blinkit_data;

-- Total Records
SELECT COUNT(*) AS Total_Records
FROM blinkit_data;

-- Standardize Item_Fat_Content
UPDATE blinkit_data
SET Item_Fat_Content = 
CASE 
    WHEN Item_Fat_Content IN ('LF','low fat') THEN 'Low Fat'
    WHEN Item_Fat_Content IN ('reg') THEN 'Regular'
    ELSE Item_Fat_Content
END;

-- Check Distinct Values
SELECT DISTINCT Item_Fat_Content
FROM blinkit_data;

-- Overall KPIs

--Total Sales 
SELECT SUM(Total_Sales) AS Total_Sales
FROM blinkit_data;

SELECT 
    CONCAT(CAST(SUM(Total_Sales)/1000000 AS DECIMAL(10,2)), ' M') AS Total_Sales_Millions
FROM blinkit_data;

--Average Sales
SELECT ROUND(AVG(Total_Sales),0) AS Avg_Sales
FROM blinkit_data;

--Number of Items 
SELECT COUNT(*) AS No_of_Items
FROM blinkit_data;

--Average Rating 
SELECT ROUND(AVG(Rating),2) AS Avg_Rating
FROM blinkit_data;

-- Sales by Fat Content
SELECT 
    Item_Fat_Content,
    ROUND(SUM(Total_Sales),2) AS Total_Sales,
    ROUND(AVG(Total_Sales),1) AS Avg_Sales,
    COUNT(*) AS No_of_Items,
    ROUND(AVG(Rating),2) AS Avg_Rating
FROM blinkit_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC;

-- Top 5 Item Types by Sales
SELECT TOP 5 
    Item_Type,
    ROUND(SUM(Total_Sales),2) AS Total_Sales,
    ROUND(AVG(Total_Sales),1) AS Avg_Sales,
    COUNT(*) AS No_of_Items,
    ROUND(AVG(Rating),2) AS Avg_Rating
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

-- Fat Content by Outlet Location
SELECT 
    Outlet_Location_Type,
    ROUND(SUM(CASE 
        WHEN Item_Fat_Content = 'Low Fat' THEN Total_Sales 
        ELSE 0 
    END), 2) AS Low_Fat_Sales,
    ROUND(SUM(CASE 
        WHEN Item_Fat_Content = 'Regular' THEN Total_Sales 
        ELSE 0 
    END), 2) AS Regular_Sales
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Outlet_Location_Type;

-- Sales by Establishment Year
SELECT 
    Outlet_Establishment_Year,
    ROUND(SUM(Total_Sales),2) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Total_Sales DESC;

-- Percentage of Sales by Outlet Size
SELECT 
    Outlet_Size,
    ROUND(SUM(Total_Sales), 2) AS Total_Sales,
    ROUND(
        (SUM(Total_Sales) * 100.0) / 
        (SELECT SUM(Total_Sales) FROM blinkit_data),
    2) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

-- Sales by Outlet Location
SELECT 
    Outlet_Location_Type,
    ROUND(SUM(Total_Sales), 2) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

-- Sales by Outlet Type
SELECT 
    Outlet_Type,
    ROUND(SUM(Total_Sales),2) AS Total_Sales,
    ROUND(
        SUM(Total_Sales) * 100.0 / 
        (SELECT SUM(Total_Sales) FROM blinkit_data), 2
    ) AS Sales_Percentage,
    ROUND(AVG(Total_Sales),1) AS Avg_Sales,
    COUNT(*) AS No_of_Items,
    ROUND(AVG(Rating),2) AS Avg_Rating
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;
