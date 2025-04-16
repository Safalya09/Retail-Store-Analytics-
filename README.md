# Retail-Store-Analytics-
# 📊 Sales Trend Analysis Using Aggregations

**Internship Task 6 - Data Analyst Role**  
**Date:** [Add your task date]  
**Submitted by:** Shivansh

---

## 🎯 Objective
To analyze **monthly revenue** and **order volume trends** using SQL aggregation functions.  
This helps in understanding how sales and orders change over time — useful for decision-making in business and marketing.

---

## 🧰 Tools Used
- MySQL 8.0
- Local CSV imported as table `retail store data`
- GitHub for code and documentation

---

## 📦 Dataset Used

I used a dataset named `retail store data` which contains fields such as:
- `Date` – Transaction date in `dd/mm/yyyy` format
- `Sales_Amount` – Revenue generated per transaction
- `Order_ID` – Order identifier

The date format was cleaned using `STR_TO_DATE()` in SQL to convert to a MySQL-readable format.

---

## 🛠️ Operations Performed

### ✅ Step 1: Parse and Validate Date Format

```sql
SELECT `Date`, STR_TO_DATE(`Date`, '%d/%m/%Y') AS Parsed_Date
FROM `retail store data`
LIMIT 5;


1. How do you group data by month and year?
	Use DATE_FORMAT() or EXTRACT(YEAR/MONTH) and GROUP BY.
2. Difference between COUNT(*) and COUNT(DISTINCT col)?
	COUNT(*) counts all rows, COUNT(DISTINCT col) counts unique values.
3. How to calculate monthly revenue?
SUM(Sales_Amount) grouped by month.
4. What are aggregate functions in SQL?
	Functions like SUM(), AVG(), COUNT(), MAX(), MIN().
5. How to handle NULLs in aggregates?
	Aggregates like SUM() ignore NULLs. Use IFNULL() or COALESCE() if needed.
6. What’s the role of ORDER BY and GROUP BY?
GROUP BY groups records; ORDER BY sorts them.
7. How do you get top 3 months by sales?
Use ORDER BY SUM(sales) DESC LIMIT 3.
