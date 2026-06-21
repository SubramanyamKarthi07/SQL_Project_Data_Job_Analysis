-- Question: What are the highest-paying remote Data Analyst jobs?
-- Why? To identify top-paying opportunities and companies hiring remote Data Analysts.

-- Objective:
-- Identify the highest-paying remote Data Analyst positions by joining job postings with company data,
-- filtering for remote jobs ("Anywhere"), excluding records with missing salaries, and ranking results
-- by annual average salary in descending order.


SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name as company_name
FROM 
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY 
    salary_year_avg DESC
LIMIT 10;