SELECT 
    `Satisfaction Score`,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) AS churned_count,
    ROUND(SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM telco
GROUP BY `Satisfaction Score`
ORDER BY `Satisfaction Score` DESC;

#Satisfaction score prediction