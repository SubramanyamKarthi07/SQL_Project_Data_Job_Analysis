/*
Question:
What skills are required for the top 10 highest-paying remote Data Analyst jobs?

Objective:
Identify the skills most frequently associated with the highest-paying remote Data Analyst positions.
First, retrieve the top 10 remote Data Analyst jobs based on annual salary, then join the job postings
with skill-related tables to determine which technical skills employers are seeking for these premium roles.
*/

WITH top_paying_jobs AS(
    SELECT 
        job_id,
        job_title,
        salary_year_avg,
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
    LIMIT 10
)
SELECT 
    top_paying_jobs.*,
    skills
 FROM top_paying_jobs
 INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
 INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC