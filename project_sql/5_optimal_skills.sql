 /*
Question:
What are the most optimal skills for remote Data Analysts based on both demand and salary?

Objective:
Identify skills that are both highly demanded and highly compensated in remote Data Analyst job postings.
This analysis combines skill demand (number of job postings requiring a skill) with average salary data
to help determine which skills provide the best career opportunities and earning potential.

Methodology:
1. Calculate the demand count for each skill across remote Data Analyst jobs.
2. Calculate the average salary associated with each skill.
3. Combine demand and salary metrics.
4. Filter for skills appearing in more than 5 job postings to ensure meaningful demand.
5. Rank skills by highest average salary and strongest market demand.

Business Value:
This analysis helps aspiring and current Data Analysts prioritize learning skills that maximize
both employability and salary growth.
*/
 WITH skills_demand AS(
    SELECT
        skills_dim.skill_id,
        skills_dim.skills,
        COUNT(skills_job_dim.job_id) AS demand_count
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        salary_year_avg IS NOT NULL AND
        job_work_from_home = TRUE
    GROUP BY 
        skills_dim.skill_id
) , average_salary AS (
    SELECT
        skills_job_dim.skill_id,
        ROUND(AVG(salary_year_avg),0) AS avg_salary
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE 
        job_title_short = 'Data Analyst' AND
        salary_year_avg IS NOT NULL AND
        job_work_from_home = TRUE
    GROUP BY 
        skills_job_dim.skill_id 
)
SELECT 
    skills_demand.skill_id,
    skills_demand.skills,
    demand_count,
    avg_salary 
FROM 
    skills_demand
INNER JOIN  average_salary ON skills_demand.skill_id = average_salary.skill_id
WHERE 
    demand_count>5
ORDER BY
    avg_salary DESC,
    demand_count DESC
LIMIT 20;



-- rewriting this same query more concisely


SELECT
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL AND
    job_work_from_home = TRUE
    GROUP BY 
        skills_dim.skill_id
    HAVING 
        COUNT(skills_job_dim.job_id)>5
    ORDER BY
        avg_salary DESC,
        demand_count DESC
LIMIT 20;