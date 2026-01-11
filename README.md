# 📊 Blinkit Sales Analysis – SQL & Power BI Project

This project is an end-to-end data analytics case study on Blinkit sales data.  
It demonstrates how raw data can be transformed into meaningful business insights using **SQL** and **Power BI**.

The workflow followed in this project is:

> **Raw Data → SQL Cleaning & Analysis → Power BI Dashboard → Business Insights**

---

## 🎯 Project Objective

To analyze Blinkit’s sales data and uncover insights related to:

- Overall business performance
- Product-level trends
- Customer preferences
- Impact of outlet size, type, and location on sales
- Growth patterns over time

The goal is to help stakeholders make data-driven decisions about inventory, outlet expansion, and product strategy.

---

## 🛠 Tools & Technologies

**SQL Server (SSMS)**

- Data cleaning  
- KPI calculations  
- Business queries  
- Conditional aggregation & subqueries  

**Power BI**

- Interactive dashboards  
- Visual storytelling  
- KPI cards & charts  

---

## 📂 Repository Structure

Blinkit-PowerBI-Dashboard/
│
├── data/
│ └── blinkit_data.csv # Raw dataset
│
├── blinkit_analysis.sql # All SQL queries used in analysis
│
├── Blinkit_Dashboard.pbix # Power BI dashboard file
│
└── README.md

---

## 🗄 SQL Analysis

Before building the Power BI dashboard, I performed full data exploration and analysis using SQL.

Key steps:

- Cleaned and standardized inconsistent values in `Item_Fat_Content`
- Calculated overall KPIs:
  - Total Sales  
  - Average Sales  
  - Number of Items  
  - Average Rating  
- Analyzed sales by:
  - Item Fat Content  
  - Item Type (Top 5 products)  
  - Outlet Size (with percentage contribution)  
  - Outlet Type  
  - Outlet Location  
  - Outlet Establishment Year  
- Concepts used:
  - `GROUP BY`, `CASE`, `SUM`, `AVG`, `COUNT`, `ROUND`
  - Subqueries for percentage calculations
  - Conditional aggregation for category-wise metrics

All SQL queries are available in:  
📄 **`blinkit_analysis.sql`**

---

## 📊 Power BI Dashboard

The Power BI dashboard visualizes the insights generated using SQL:

**KPI Cards:**

- Total Sales  
- Average Sales  
- Number of Items  
- Average Rating  

**Visuals include:**

- Sales by Item Type  
- Sales by Outlet Size & Type  
- Sales by Location Tier  
- Trend by Establishment Year  
- Fat Content comparison (Low Fat vs Regular)  

**Dashboard Preview:**

![Dashboard Preview](dashboard_overview.png)

The dashboard allows users to:

- Quickly understand performance  
- Compare categories  
- Identify high-performing outlets and products  

---

## 🔍 Key Business Insights

- Low Fat items contribute a significant share of total sales.  
- Medium-sized outlets generate the highest revenue contribution.  
- Certain outlet types outperform others in both revenue and ratings.  
- Newer outlets show competitive sales performance compared to older ones.  
- A small set of item types drives a large portion of total revenue.  

---

## 🚀 What This Project Demonstrates

This project showcases my ability to:

- Clean and standardize real-world data  
- Write structured and optimized SQL queries  
- Perform business-focused data analysis  
- Translate raw numbers into insights  
- Build professional dashboards in Power BI  
- Follow an end-to-end analytics workflow  

📌 *This project is designed to reflect how real-world data analyst tasks are performed, making it suitable for fresher-level Data Analyst and Business Analyst roles.*
