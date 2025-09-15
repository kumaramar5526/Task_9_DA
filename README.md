# 📊 Task 9: Sales Trend Analysis Using Aggregations

## 📌 Objective
Perform a detailed time-based analysis of sales data using SQL aggregation techniques.  
The goal is to identify **monthly revenue and order volume trends**, highlight **peak sales periods**, and understand **customer buying patterns**.

---

## 🛠 Tools Used
- PostgreSQL
- Dataset: `online_sales.csv`

---

## 📑 Steps Performed
1. Created a PostgreSQL database and `online_sales` table.
2. Imported the dataset (`online_sales.csv`) into the table.
3. Used SQL aggregation functions to compute:
   - `SUM(amount)` → Monthly Revenue  
   - `COUNT(DISTINCT order_id)` → Order Volume  
4. Extracted year and month using:
   ```sql
   EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
5. Formatted results into YYYY-MM using TO_CHAR.
6. Ran queries to:
    - Show monthly trends for all years
    - Filter results for 2023
    - Identify top 5 months by revenue

📊 Example Results:-

| Month-Year | Total Revenue | Total Orders |
| ---------- | ------------- | ------------ |
| 2022-03    | 12,500        | 120          |
| 2022-04    | 10,800        | 95           |
| 2023-03    | 15,200        | 135          |
| 2023-05    | 18,700        | 160          |
| 2023-10    | 20,400        | 175          |


📝 Insights:-
     1. Peak sales occurred in March, May, and October.
     2. Some months had high order counts but lower revenue, suggesting lower-value items were popular.
     3. Top 5 revenue months help in planning marketing campaigns and inventory.
     4. Year-over-year comparisons highlight growth in sales and changing buying behavior.

✅ Deliverables:-

    - Dataset → online_sales.csv
    - SQL Script → Task_9_DA.sql
    - README (this file)
