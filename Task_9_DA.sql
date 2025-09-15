-- Task 9: Sales Trend Analysis Using Aggregations
-- Dataset: online_sales (order_id, order_date, amount, product_id)

-- 1. Monthly Revenue & Orders (All Years)
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    TO_CHAR(order_date, 'YYYY-MM') AS month_year,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month, month_year
ORDER BY year, month;

-- 2. Monthly Revenue & Orders for a Specific Year (Example: 2023)
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month_year,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
WHERE EXTRACT(YEAR FROM order_date) = 2023
GROUP BY month_year
ORDER BY month_year;

-- 3. Top 5 Months by Revenue Across All Years
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month_year,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY month_year
ORDER BY total_revenue DESC
LIMIT 5;
