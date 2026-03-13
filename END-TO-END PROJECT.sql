
-- create a database 
CREATE DATABASE retail_customer_analysis_project;

-- Create a Table 

CREATE TABLE shopping_data (
    customer_id INT,
    age INT,
    gender VARCHAR(10),
    item_purchased VARCHAR(100),
    category VARCHAR(50),
    purchase_amount_usd DECIMAL(10,2),
    location VARCHAR(100),
    size VARCHAR(10),
    color VARCHAR(50),
    season VARCHAR(20),
    review_rating DECIMAL(3,2),
    subscription_status VARCHAR(10),
    payment_method VARCHAR(50),
    shipping_type VARCHAR(50),
    discount_applied VARCHAR(5),
    promo_code_used VARCHAR(5),
    previous_purchases INT,
    preferred_payment_method VARCHAR(50),
    frequency_of_purchases VARCHAR(50)
);

Select * from cleaned_shopping_data;

-- Advanced Consumer Behavior Analysis 

-- Sales and Revenue Analysis
-- Q1: What is the total revenue generated from all customer purchases?
-- Q2: What is the average order value across all transactions?
-- Q3: Who are the top 10 highest spending customers based on total purchase amount?

-- Customer Demographics Analysis
-- Q4: How does total revenue differ between male and female customers?
-- Q5: Which product categories generate the highest revenue?

-- Product Performance
-- Q6: Which products are purchased most frequently by customers?

-- Seasonal Sales Analysis
-- Q7: How do total sales vary across different seasons?
-- Q8: Which product categories perform best in each season?

-- Discount Impact Analysis
-- Q9: What is the impact of discounts on total revenue and number of orders?
-- Q10: How does the average purchase amount differ between transactions with discounts and without discounts?

-- Payment Behavior Analysis
-- Q11: Which payment method is used most frequently by customers?
-- Q12: Which payment method generates the highest total revenue?

-- Customer Satisfaction Analysis
-- Q13: What is the average review rating for each product category?
-- Q14: How many purchases have a review rating of 4.5 or higher?

-- Customer Loyalty Analysis
-- Q15: Which customers have the highest number of previous purchases?

-- Geographic Analysis
-- Q16: Which locations generate the highest total revenue?
-- Q17: What is the average spending per customer in each location?

-- Customer Behavior Insights
-- Q18: Which product category is most popular among male and female customers?
-- Q19: How does customer spending vary by age?

-- Market Performance
-- Q20: What are the top 5 locations generating the highest revenue?
-- Q21: Which products are the most popular within each category?





-- Q1: What is the total revenue generated from all customer purchases?
-- 1. Ttoal Revenue 
SELECT SUM(`purchase_amount_(usd)`) AS total_revenue
FROM cleaned_shopping_data;



-- Q2: What is the average order value across all transactions?
-- Average order value 
SELECT AVG(`purchase_amount_(usd)`) AS AVG_ORDER_VALUE 
FROM cleaned_shopping_data;





-- Q3: Who are the top 10 highest spending customers based on total purchase amount?
-- 3. Top 10 Highest Spending Customers
SELECT customer_id,
       SUM(`purchase_amount_(usd)`) AS total_spent
FROM shopping_data
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;





-- Customer Demographics Analysis
-- Q4: How does total revenue differ between male and female customers?
-- 4. Revenue by Gender
SELECT gender,
       SUM(`purchase_amount_(usd)`) AS revenue
FROM cleaned_shopping_data
GROUP BY gender;




-- Q5: Which product categories generate the highest revenue?
-- 5. Revenue by Product Category
SELECT category,
       SUM(`purchase_amount_(usd)`) AS revenue
FROM cleaned_shopping_data
GROUP BY category
ORDER BY revenue DESC;






-- Product Performance
-- Q6: Which products are purchased most frequently by customers?
-- 6. Most Purchased Products
SELECT item_purchased,
       COUNT(*) AS purchase_count
FROM cleaned_shopping_data
GROUP BY item_purchased
ORDER BY purchase_count DESC
LIMIT 10;






-- Seasonal Sales Analysis
-- Q7: How do total sales vary across different seasons?
-- 7. Seasonal Sales Performance
SELECT season,
       SUM(`purchase_amount_(usd)`) AS total_sales
FROM cleaned_shopping_data
GROUP BY season
ORDER BY total_sales DESC;






-- Q8: Which product categories perform best in each season?
-- 8. Category Sales per Season
SELECT season,
       category,
       SUM(`purchase_amount_(usd)`) AS sales
FROM cleaned_shopping_data
GROUP BY season, category
ORDER BY season, sales DESC;






-- Discount Impact Analysis
-- 9: What is the impact of discounts on total revenue and number of orders?
-- 9. Impact of Discounts on Revenue
SELECT discount_applied,
       SUM(`purchase_amount_(usd)`) AS revenue,
       COUNT(*) AS orders
FROM cleaned_shopping_data
GROUP BY discount_applied;







-- Q10: How does the average purchase amount differ between transactions with discounts and without discounts?
-- 10. Average Purchase Amount with Discount
SELECT discount_applied,
       AVG(`purchase_amount_(usd)`) AS avg_purchase
FROM cleaned_shopping_data
GROUP BY discount_applied;







-- Payment Behavior Analysis
-- Q11: Which payment method is used most frequently by customers?
-- 11. Payment Method Popularity
SELECT payment_method,
       COUNT(*) AS total_transactions
FROM cleaned_shopping_data
GROUP BY payment_method
ORDER BY total_transactions DESC;






-- Q12: Which payment method generates the highest total revenue?
-- 12. Revenue by Payment Method
SELECT payment_method,
       SUM(`purchase_amount_(usd)`) AS revenue
FROM cleaned_shopping_data
GROUP BY payment_method
ORDER BY revenue DESC;






-- Customer Satisfaction Analysis
-- Q13: What is the average review rating for each product category?
-- 13. Average Rating by Category
SELECT category,
       AVG(review_rating) AS avg_rating
FROM cleaned_shopping_data
GROUP BY category
ORDER BY avg_rating DESC;






-- Q14: How many purchases have a review rating of 4.5 or higher?
SELECT *
FROM cleaned_shopping_data
WHERE review_rating >= 4.5;







-- Customer Loyalty Analysis
-- Q15: Which customers have the highest number of previous purchases?
SELECT customer_id,
       SUM(previous_purchases) AS total_previous
FROM cleaned_shopping_data
GROUP BY customer_id
ORDER BY total_previous DESC
LIMIT 10;







-- Geographic Analysis
-- Q16: Which locations generate the highest total revenue?
SELECT location,
       SUM(`purchase_amount_(usd)`) AS revenue
FROM cleaned_shopping_data
GROUP BY location
ORDER BY revenue DESC;






-- Q17: What is the average spending per customer in each location?
SELECT location,
       AVG(`purchase_amount_(usd)`) AS avg_spending
FROM shopping_data
GROUP BY location
ORDER BY avg_spending DESC;






-- Customer Behavior Insights
-- Q18: Which product category is most popular among male and female customers?
SELECT gender,
       category,
       COUNT(*) AS purchase_count
FROM cleaned_shopping_data
GROUP BY gender, category
ORDER BY gender, purchase_count DESC;







-- Q19: How does customer spending vary by age?
SELECT age,
       SUM(`purchase_amount_(usd)`) AS total_spending
FROM cleaned_shopping_data
GROUP BY age
ORDER BY total_spending DESC;






-- Market Performance
-- Q20: What are the top 5 locations generating the highest revenue?
SELECT location,
       SUM(`purchase_amount_(usd)`) AS revenue
FROM cleaned_shopping_data
GROUP BY location
ORDER BY revenue DESC
LIMIT 5;




-- Advanced SQL Analytical Queries
-- Q21: Which products are the most popular within each category?
SELECT category,
       item_purchased,
       COUNT(*) AS purchases
FROM cleaned_shopping_data
GROUP BY category, item_purchased
ORDER BY purchases DESC;





