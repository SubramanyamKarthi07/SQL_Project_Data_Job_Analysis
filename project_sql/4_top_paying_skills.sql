 /*
Question:
What are the highest-paying skills for remote Data Analyst jobs?

Objective:
Analyze the average salary associated with each skill in remote Data Analyst job postings.
This helps identify which technical skills command the highest salaries and can guide
professionals in prioritizing high-value skills for career growth and earning potential.
*/
 SELECT
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
 FROM job_postings_fact
 INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
 INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
 WHERE 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_work_from_home = TRUE
 GROUP BY 
    skills
ORDER BY
    avg_salary DESC

 LIMIT 30;
