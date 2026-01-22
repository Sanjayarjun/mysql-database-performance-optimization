# Database Performance Optimization using MySQL

## 📌 Project Overview
This project demonstrates how to identify and optimize slow-running SQL queries in MySQL using real execution plans and indexing techniques.  
The **Sakila sample database** was used to simulate a real-world scenario involving multiple table joins and date-based filtering.

---

## 🛠️ Tools & Technologies
- MySQL
- MySQL Workbench
- Sakila Sample Database
- Git & GitHub

---

## 📂 Project Structure


---

## 🚀 Steps Performed

### 1️⃣ Database Setup
- Imported `sakila-schema.sql` and `sakila-data.sql`
- Verified tables and record counts

### 2️⃣ Identifying a Slow Query
- A multi-table JOIN query using `YEAR(rental_date)` was executed
- This caused a **full table scan** due to a non-SARGable condition

### 3️⃣ Performance Analysis
- Used `EXPLAIN` to analyze query execution plan
- Observed inefficient scan type and higher row access

### 4️⃣ Query Optimization
- Rewrote the query using a **date range filter**
- Removed function usage from the WHERE clause

### 5️⃣ Indexing Strategy
- Created an index on `rental_date`
- Verified index usage using `EXPLAIN`

### 6️⃣ Final Result
- Reduced number of scanned rows
- Improved query execution efficiency
- Index successfully used in execution plan

---

## 📈 Optimization Techniques Used
- Query rewrite (SARGable conditions)
- Index creation
- Execution plan analysis using EXPLAIN

---

## ✅ Outcome
The optimized query demonstrated better performance by leveraging indexing and efficient filtering.  
This project showcases a practical approach to SQL performance tuning in MySQL.

---

## 📸 Screenshots
All execution steps and performance comparisons are documented in the `screenshots` folder.
