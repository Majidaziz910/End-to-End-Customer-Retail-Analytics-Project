# 🛍️ End-to-End Customer Retail Analytics Project

A complete data analytics pipeline built on a real-world customer 
shopping behaviour dataset — from raw data to business insights.

## 📌 Problem Statement
A retail company wants to understand what drives customer purchases,
satisfaction, and loyalty across demographics, seasons, and channels.

**Business Question:**
"How can consumer shopping data be used to identify trends, improve 
customer engagement, and optimize marketing and product strategies?"

## 🔧 Tech Stack
| Tool | Purpose |
|------|---------|
| Python (Pandas) | Data Cleaning & Feature Engineering |
| Google Colab | Development Environment |
| MySQL | Business Analysis (21 SQL Queries) |
| Power BI | Interactive Dashboard (15 Insights) |

## 📁 Project Structure
├── end_to_end_customer_retail_project.py  # Data cleaning script
├── END-TO-END_PROJECT.sql                 # All 21 SQL queries
├── END-TO-END_PROJECT.pbix                # Power BI dashboard
├── cleaned_shopping_data.csv              # Final clean dataset
└── README.md

## 📊 What's Inside

### Step 1 — Data Cleaning (Python)
- Filled missing Review Ratings using category-wise median imputation
- Standardized all column names (lowercase + underscores)
- Engineered `purchase_frequency_days` column (text → numeric days)
- Created `age_group` column using quartile-based binning
- Removed irrelevant columns
- Output: 3,900 records × 19 clean columns

### Step 2 — SQL Analysis (MySQL)
21 business-driven queries covering:
- 💰 Revenue & Sales (total revenue, AOV, top spenders)
- 👥 Customer Demographics (gender, age spending patterns)
- 🛍️ Product Performance (bestsellers, category revenue)
- 🌦️ Seasonal Trends (sales by season & category)
- 💸 Discount Impact (revenue with/without discounts)
- 💳 Payment Behaviour (most used & highest revenue methods)
- ⭐ Customer Satisfaction (ratings by category)
- 📍 Geographic Analysis (revenue by US state)

### Step 3 — Power BI Dashboard
Interactive 4-page report with global slicers:
- **Page 1** — Executive Overview (KPI cards, map, seasonal trends)
- **Page 2** — Customer Analysis (age, gender, subscriptions, CLV)
- **Page 3** — Product & Category (top items, color/size demand)
- **Page 4** — Operations & Satisfaction (shipping, payments, ratings)

## 💡 Key Insights
- Subscribed customers show significantly higher purchase history
- Clothing dominates all categories in both volume and revenue
- Express shipping correlates with higher review ratings
- Weekly buyers are a small but extremely high-value segment
- Discounted orders don't always mean lower spend per transaction

## 📈 Dataset
- **Source:** Customer Shopping Behaviour Dataset
- **Records:** 3,900 transactions
- **Columns:** 19 (after cleaning)
- **Coverage:** Demographics, products, payments, seasons, locations

## 🏷️ Topics
`data-analytics` `python` `pandas` `mysql` `sql` `power-bi` 
`data-cleaning` `feature-engineering` `business-intelligence` 
`data-visualization` `eda` `retail-analytics` `dashboard`# End-to-End-Customer-Retail-Analytics-Project
End-to-end data analytics project analyzing 3,900 customer retail transactions using Python (Pandas) for data cleaning, MySQL for business analysis (21 queries), and Power BI for interactive dashboards (15 insights). Covers revenue trends, customer segmentation, seasonal analysis &amp; geographic performance.
