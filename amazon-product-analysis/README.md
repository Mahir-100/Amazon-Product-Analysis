📊 Amazon Product Performance Analysis: Pricing Strategy & Customer Satisfaction
Project Overview
This project delivers a complete, end-to-end data analysis solution focused on optimizing Amazon's product strategy. The objective was to analyze the relationship between discount pricing, revenue generation, and customer satisfaction across various product categories.

The pipeline spans raw data ingestion, advanced SQL feature engineering for segmentation, rigorous data cleaning (to resolve real-world parsing errors), and the creation of an interactive business dashboard using Tableau.

📈 Key Business Findings (Actionable Insights)
The final dashboard provides clear direction for inventory management and sales strategy, focusing on four core areas:

Q1 Revenue Drivers

Electronics and Home & Kitchen are the largest revenue contributors, yet Computers & Accessories exhibits the highest average customer rating (Avg. 4.15).

Protect the strong brand equity in Computers & Accessories; avoid deep, indiscriminate discounting to maximize profit margin.

Q2 Pricing Strategy

The '1. Premium (₹2000+)' price tier maintains the highest customer satisfaction (Avg. 4.09), despite receiving the highest average discount (~48%).

Confirm that the 48% discount is necessary; high satisfaction suggests the product quality supports a higher price point or a lower discount.

Q3 Top Performers

The top 10 products, driven by high rating counts, are primarily long-life accessories (e.g., cables and batteries).

Use the features of top-performing products (e.g., durability, warranty) as a benchmark for developing new products in lower-tier categories.

Q4 Problem Stock

Identified several low-rated products (Rating < 3.5) with high discount rates (>70%), predominantly in the Home & Kitchen category.

Initiate an immediate SKU review for identified problem stock; consider liquidation or discontinuation to reduce inventory carrying costs and protect brand perception.

🛠️ Technical Methodology & Stack
This analysis demonstrates expertise in data preparation and visualization using industry-standard tools.

Data Cleaning

Tableau (Data Interpreter/Manual Cleaning)

Successfully resolved complex real-world CSV parsing errors caused by internal commas within quoted string fields (Product Names).

Data Wrangling

SQL (SQLite)

Employed string manipulation functions (SUBSTR, INSTR) to extract meaningful, top-level product categories from a nested hierarchy.

Feature Engineering

SQL CASE WHEN

Created a business-critical Price_Tier dimension (Premium, Mid-Range, Budget) for segmentation and strategic analysis.

Visualization

Tableau Desktop/Public

Developed a professional, four-panel dashboard featuring a Dual Axis Combo Chart (Revenue vs. Rating) and Action Filters to enable cross-sheet interactivity.

📂 Repository Contents
The repository is organized into three logical directories mirroring the analysis workflow:

/data/

amazon.csv, Q1-Q4 CSV files

Contains the raw source data and the four derived, cleaned, and aggregated CSV files used for the final Tableau connection.

/code/

data_wrangling_queries.sql

The complete SQL script used to perform all aggregations and feature engineering (e.g., creating Price_Tier and Top_Category).

/tableau/

Amazon Product Performance Analysis.twbx

The final Tableau Packaged Workbook. This format is self-contained and allows for immediate viewing and editing without requiring external data connection.
