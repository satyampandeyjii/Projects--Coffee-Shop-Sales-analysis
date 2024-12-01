# Coffee Shop Sales Analysis

A project to analyze coffee shop sales data for insights into sales trends, customer behavior, and product performance. SQL queries help uncover actionable insights for optimizing revenue and operations.

---

## Dataset Overview

| Column Name         | Description                                   |
|---------------------|-----------------------------------------------|
| `transaction_date`  | Date of the transaction.                     |
| `transaction_qty`   | Quantity of items purchased.                 |
| `unit_price`        | Price per unit of the product.               |
| `product_category`  | Product category (e.g., Coffee, Snacks).     |
| `store_location`    | Store location.                              |

---

## Key Analyses

1. **Sales Trends**:
   - Daily and hourly revenue patterns.
2. **Customer Behavior**:
   - Purchase volumes and average items per transaction.
3. **Low-Performing Products**:
   - Items with low sales or revenue.
4. **Geographic Insights**:
   - Store performance by location.

---

## Example Query

```sql
SELECT transaction_date, SUM(transaction_qty * unit_price) AS total_sales
FROM coffee_shop_sales
GROUP BY transaction_date
ORDER BY transaction_date;

