 /*
Question:
What are the most in-demand skills for remote Data Analyst positions?

Objective:
Identify the top 5 skills most frequently requested in remote Data Analyst job postings.
This analysis helps determine which technical skills are most valuable for aspiring
Data Analysts seeking remote opportunities.
*/
 SELECT
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
 FROM job_postings_fact
 INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
 INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
 WHERE 
    job_title_short = 'Data Analyst' AND
    job_work_from_home = TRUE
 GROUP BY 
    skills
ORDER BY
    demand_count DESC

 LIMIT 5;