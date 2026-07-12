## Retail Business Intelligence Dashboard
Overview

This project demonstrates an end-to-end Retail Business Intelligence solution built using Google BigQuery as the cloud data warehouse and Microsoft Power BI for interactive analytics and dashboarding.

The solution transforms retail sales data into actionable business insights covering sales performance, customer behavior, product profitability, inventory management, and marketing effectiveness.

## Project Objectives
Analyze retail sales performance across multiple dimensions.
Identify high-performing products and categories.
Monitor inventory health and stock movement.
Understand customer purchasing behavior.
Measure marketing campaign performance.
Enable data-driven decision making through interactive dashboards.

## Tools Stack

| Technology      | Purpose                        |
| --------------- | ------------------------------ |
| Google BigQuery | Cloud Data Warehouse           |
| SQL             | Data Cleaning & Transformation |
| Power BI        | Dashboard Development          |
| DAX             | KPI Calculations               |
| Power Query     | Data Preparation               |

## Data Pipeline

| **Stage**                  | **Technology**      | **Description**                                                                                      |
| -------------------------- | ------------------- | ---------------------------------------------------------------------------------------------------- |
| **1. Data Source**         | Retail Dataset      | Raw retail sales, customer, product, inventory, and marketing data.                                  |
| **2. Data Warehouse**      | Google BigQuery     | Stores large-scale retail data and serves as the centralized analytics repository.                   |
| **3. Data Transformation** | SQL (BigQuery)      | Cleans, joins, filters, and transforms raw data into analysis-ready datasets.                        |
| **4. Data Connection**     | Power BI            | Connects directly to Google BigQuery for data import or DirectQuery.                                 |
| **5. Data Preparation**    | Power Query         | Performs additional data cleansing, type conversion, and shaping before loading into the data model. |
| **6. Data Modeling**       | Power BI Data Model | Establishes relationships between tables using a star schema for efficient reporting.                |
| **7. Business Logic**      | DAX                 | Creates calculated measures, KPIs, time intelligence, and business metrics.                          |
| **8. Visualization**       | Power BI Dashboards | Interactive dashboards for Executive, Sales, Inventory, Product, Marketing, and Customer insights.   |

## Pipeline Flow

| **Step** | **Flow**               |
| -------- | ---------------------- |
| 1        | Retail Dataset         |
| ↓        | Google BigQuery        |
| ↓        | SQL Transformations    |
| ↓        | Power BI Connection    |
| ↓        | Power Query            |
| ↓        | Data Modeling          |
| ↓        | DAX Measures & KPIs    |
| ↓        | Interactive Dashboards |

## Dashboard Pages

| **Dashboard Page**         | **Purpose**                                                                      | **Key Insights / KPIs**                                                                                         |
| -------------------------- | -------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| **Executive Overview**     | Provides a high-level summary of overall business performance.                   | Total Revenue, Total Profit, Total Orders, Profit Margin, Average Order Value, Sales Trends, Top Categories     |
| **Monthly Sales Insights** | Analyzes sales performance over time to identify trends and seasonality.         | Monthly Revenue, Monthly Profit, Sales Growth, Order Volume, Revenue by Category, Sales Trends                  |
| **Inventory Insights**     | Monitors inventory levels and stock movement to improve inventory management.    | Inventory Levels, Low Stock Products, Inventory Turnover, Stock Availability, Inventory Distribution            |
| **Product Analysis**       | Evaluates product and category performance to identify best-performing products. | Best-Selling Products, Most Profitable Products, Revenue by Product, Profit by Product, Product Ranking         |
| **Marketing Insights**     | Measures the effectiveness of marketing campaigns and channels.                  | Campaign Performance, Marketing ROI, Revenue by Channel, Customer Acquisition, Campaign Comparison              |
| **Customer Insights**      | Examines customer purchasing behavior and segmentation.                          | Customer Segmentation, Customer Lifetime Value (CLV), Repeat Customers, Purchase Frequency, Geographic Analysis |

## Repository Structure

```text
Retail-BI-Project
│
├── 📁 SQL Scripts
├── 📁 Power BI
│   └── Retail_BI_Project_Portfolio.pbix
├── 📁 Dashboard Screenshots
└── README.md
```

## Business Impact

1. Increase revenue through product performance analysis.
2. Improve inventory planning.
3. Optimize marketing investments.
4. Enhance customer retention.
5. Support executive decision-making with real-time insights.

## Future Enhancements
1. Near real-time BigQuery data refresh
2. Forecasting using BigQuery ML
3. Customer segmentation with clustering
4. Advanced profitability analysis
5. Row-Level Security (RLS)
6. Automated scheduled refresh

# Author

``` Krishna Kamal Gogoi ```

``` Operational Analyst | Business Intelligence Analyst | Data Analyst | Power BI Developer ```

``` Tech Stack: Power BI • Google BigQuery • SQL • DAX • Power Query ```

