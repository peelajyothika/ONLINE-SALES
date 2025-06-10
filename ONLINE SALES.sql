select* from [dbo].[Online Sales Data];

SELECT
    YEAR(Date) AS order_year,
    MONTH(Date) AS order_month,
    SUM(Total_Revenue) AS total_revenue,
    COUNT(DISTINCT Transaction_ID) AS order_volume
FROM
    [dbo].[Online Sales Data]
WHERE
    Date IS NOT NULL
GROUP BY
    YEAR(Date),
    MONTH(Date)
ORDER BY
    order_year, order_month;

