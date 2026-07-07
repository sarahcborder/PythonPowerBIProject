SELECT 
    `Churn Label` AS churn_status,
    COUNT(*) AS total_customers,
    ROUND(SUM(`Total Revenue`), 2) AS combined_revenue,
    ROUND(AVG(`Monthly Charge`), 2) AS avg_monthly_bill
FROM telco
GROUP BY `Churn Label`;

#revenue lost
#bill comparison
