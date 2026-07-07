#High-Level Executive KPIs
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 
        2
    ) AS churn_rate_percentage
FROM telco;

#Billing Vulnerability Breakdown 
SELECT 
    `Payment Method`,
    COUNT(*) AS churned_customer_count,
    ROUND((COUNT(*) * 100.0) / SUM(COUNT(*)) OVER(), 2) AS percentage_of_total_churn
FROM telco
WHERE `Churn Label` = 'Yes'
GROUP BY `Payment Method`
ORDER BY churned_customer_count DESC;

#Product Vulnerability Aggregation 
SELECT 
    `Internet Type`,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        (SUM(CASE WHEN `Churn Label` = 'Yes' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 
        2
    ) AS churn_rate_by_product
FROM telco
GROUP BY `Internet Type`
ORDER BY churn_rate_by_product DESC;

#Sentiment Churn Thresholds 
SELECT 
    `Churn Label`,
    ROUND(AVG(`Satisfaction Score`), 2) AS average_satisfaction_score,
    COUNT(*) AS customer_count
FROM telco
GROUP BY `Churn Label`;
