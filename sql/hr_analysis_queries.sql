-- Overall Attrition Rate
SELECT 
COUNT(CASE WHEN attrition='Yes' THEN 1 END)*100.0/COUNT(*) AS attrition_rate
FROM employees;

-- Attrition by Department
SELECT department, COUNT(*) AS total_attrition
FROM employees
WHERE attrition='Yes'
GROUP BY department;

-- Salary vs Attrition
SELECT attrition, AVG(monthly_income) AS avg_income
FROM employees
GROUP BY attrition;

-- Job Satisfaction vs Attrition
SELECT job_satisfaction, COUNT(*) AS total_attrition
FROM employees
WHERE attrition='Yes'
GROUP BY job_satisfaction;

