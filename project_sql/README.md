# 📊 Data Analyst Job Market Analysis Using SQL

## Overview

This project explores the Data Analyst job market using SQL by analyzing job postings, salaries, companies, and required skills.

The objective is to answer key business questions such as:

* Which Data Analyst jobs offer the highest salaries?
* What skills are required for top-paying positions?
* Which skills are most in demand?
* Which skills command the highest salaries?
* What are the most optimal skills based on both demand and salary?

Through a series of SQL queries, this project transforms raw job posting data into actionable career insights for aspiring and professional Data Analysts.

---

# 🗂 Dataset Overview

The analysis uses the following tables:

### job_postings_fact

Contains job posting information such as:

* Job Title
* Job Location
* Salary Information
* Work From Home Status
* Company ID

### company_dim

Contains company information.

### skills_job_dim

Bridge table connecting jobs and skills.

### skills_dim

Contains skill names and skill IDs.

---

# 🛠 SQL Skills Demonstrated

This project demonstrates:

* SELECT Statements
* Filtering with WHERE
* Sorting with ORDER BY
* Aggregate Functions

  * COUNT()
  * AVG()
  * ROUND()
* INNER JOIN
* LEFT JOIN
* Common Table Expressions (CTEs)
* GROUP BY
* HAVING
* Data Analysis Techniques
* Business-Oriented SQL Queries

---

# 📈 Project Analysis

---

## Query 1: Top Paying Remote Data Analyst Jobs

### Business Question

What are the highest-paying remote Data Analyst jobs?

### Objective

Identify the top 10 remote Data Analyst positions with available salary information.

### SQL Concepts Used

* LEFT JOIN
* Filtering
* Sorting
* LIMIT

### Business Insight

This analysis reveals:

* Companies offering premium salaries.
* Salary trends among remote Data Analyst roles.
* High-paying opportunities in the job market.

---

## Query 2: Skills Required for Top Paying Jobs

### Business Question

What skills are required for the highest-paying remote Data Analyst jobs?

### Objective

Analyze the skills associated with the top-paying Data Analyst positions.

### SQL Concepts Used

* Common Table Expressions (CTE)
* INNER JOIN
* Filtering

### Business Insight

This analysis identifies the technical skills employers seek when offering premium compensation.

Examples include:

* SQL
* Python
* Tableau
* Power BI
* Cloud Technologies

---

## Query 3: Most In-Demand Skills

### Business Question

What skills are most frequently requested in remote Data Analyst jobs?

### Objective

Determine the top 5 skills appearing most often in remote Data Analyst job postings.

### SQL Concepts Used

* COUNT()
* GROUP BY
* ORDER BY

### Business Insight

This analysis helps identify the skills that employers value most across the market.

Commonly demanded skills include:

* SQL
* Excel
* Python
* Tableau
* Power BI

---

## Query 4: Highest Paying Skills

### Business Question

Which skills are associated with the highest salaries?

### Objective

Calculate the average salary linked to each skill in remote Data Analyst positions.

### SQL Concepts Used

* AVG()
* ROUND()
* GROUP BY

### Business Insight

This analysis reveals which skills provide the greatest earning potential.

Examples often include:

* Snowflake
* Databricks
* Python
* AWS
* Azure

---

## Query 5: Optimal Skills Analysis

### Business Question

Which skills provide the best combination of demand and salary?

### Objective

Combine demand metrics and salary metrics to identify the most valuable skills for Data Analysts.

### SQL Concepts Used

* Multiple CTEs
* Aggregation
* Joins
* HAVING Clause

### Business Insight

This is the most important analysis in the project because it identifies skills that are:

✔ Highly demanded by employers

✔ Associated with high salaries

✔ Valuable for long-term career growth

This query helps answer:

> "Which skills should I learn to maximize both employability and salary?"

---

# 🎯 Key Findings

The analysis shows that successful Data Analysts typically possess a combination of:

### Technical Skills

* SQL
* Python
* Excel
* Tableau
* Power BI

### Advanced Skills

* Snowflake
* AWS
* Azure
* Databricks
* Big Data Technologies

### Market Trends

* Remote opportunities remain highly competitive.
* Specialized technical skills command higher salaries.
* Demand and salary are not always correlated.
* The best career strategy is to focus on skills that are both highly demanded and highly compensated.

---

# 🚀 Project Structure

```text
Data-Analyst-SQL-Project/
│
├── 1_top_paying_jobs.sql
├── 2_top_paying_job_skills.sql
├── 3_top_demanded_skills.sql
├── 4_top_paying_skills.sql
├── 5_optimal_skills.sql
│
├── README.md
│
└── query_results/
```

# 🧰 Tools Used

* PostgreSQL
* SQL
* Git
* GitHub
* VS Code

---

# 📚 Learning Outcomes

Through this project, I learned how to:

* Write business-focused SQL queries.
* Analyze large datasets efficiently.
* Use joins to combine related tables.
* Apply aggregate functions for data analysis.
* Build portfolio-ready SQL projects.
* Translate raw data into actionable business insights.

---

# 👨‍💻 Author

### Subramanyam Karthi

Aspiring Data Analyst

Skills:

* SQL
* Python
* Power BI
* Data Analytics

---

## ⭐ Project Goal

The goal of this project is to showcase practical SQL skills by solving real-world business questions using job market data and generating actionable insights for aspiring Data Analysts.
