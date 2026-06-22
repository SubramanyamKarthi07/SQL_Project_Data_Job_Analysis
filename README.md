# 📊 SQL Project: Data Analyst Job Market Analysis

## Overview

This project analyzes Data Analyst job postings using SQL to uncover valuable insights about salaries, required skills, and market demand.

The analysis focuses on answering real-world business questions that help aspiring Data Analysts understand:

* Which jobs pay the highest salaries
* Which skills are most in demand
* Which skills command the highest salaries
* Which skills provide the best balance of demand and earning potential

---

## Project Objectives

The main objectives of this project are:

* Analyze the highest-paying remote Data Analyst jobs
* Identify skills required for top-paying positions
* Discover the most in-demand Data Analyst skills
* Determine the highest-paying technical skills
* Find optimal skills based on both demand and salary

---

## Dataset

The project uses job posting data consisting of:

### Tables Used

| Table             | Description                     |
| ----------------- | ------------------------------- |
| job_postings_fact | Job posting information         |
| company_dim       | Company information             |
| skills_job_dim    | Mapping between jobs and skills |
| skills_dim        | Skill details                   |

---

## SQL Concepts Demonstrated

This project demonstrates:

* SELECT Statements
* WHERE Filtering
* ORDER BY
* LIMIT
* INNER JOIN
* LEFT JOIN
* Common Table Expressions (CTEs)
* GROUP BY
* HAVING
* Aggregate Functions

  * COUNT()
  * AVG()
  * ROUND()

---

# Analysis Performed

## 1. Top Paying Remote Data Analyst Jobs

### Business Question

What are the highest-paying remote Data Analyst jobs?

### Insight

Identified the top 10 highest-paying remote Data Analyst positions and the companies offering them.

---

## 2. Skills Required for Top Paying Jobs

### Business Question

What skills are required for the highest-paying Data Analyst jobs?

### Insight

Analyzed the technologies and tools associated with premium-paying positions.

---

## 3. Most In-Demand Skills

### Business Question

What skills are most frequently requested by employers?

### Insight

Identified the top skills appearing across remote Data Analyst job postings.

---

## 4. Highest Paying Skills

### Business Question

Which skills are associated with the highest salaries?

### Insight

Calculated average salaries for each skill to determine which technologies command premium compensation.

---

## 5. Optimal Skills Analysis

### Business Question

Which skills offer both high demand and high salaries?

### Insight

Combined salary and demand metrics to identify the most valuable skills for career growth.

---

## Key Findings

The analysis highlights several important trends:

* SQL remains one of the most valuable Data Analyst skills.
* Python is highly demanded and associated with strong salaries.
* Cloud technologies continue to grow in importance.
* Specialized tools often command higher salaries.
* The best career strategy is to focus on skills that are both highly demanded and highly compensated.

---

## Repository Structure

```text
SQL_Project_Data_Job_Analysis/
│
├── project_sql/
│   ├── 1_top_paying_jobs.sql
│   ├── 2_top_paying_job_skills.sql
│   ├── 3_top_demanded_skills.sql
│   ├── 4_top_paying_skills.sql
│   └── 5_optimal_skills.sql
│
├── sql_load/
│
└── README.md
```

## Tools Used

* PostgreSQL
* SQL
* VS Code
* Git
* GitHub

---

## Skills Demonstrated

* Data Analysis
* SQL Query Optimization
* Data Exploration
* Business Intelligence
* Problem Solving
* Analytical Thinking

---

## Author

**Subramanyam Karthi**

Aspiring Data Analyst

### Connect With Me

* SQL
* Python
* Power BI
* Data Analytics

---

⭐ If you found this project helpful, feel free to star the repository.
