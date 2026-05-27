SELECT 
    ROUND(
        (COUNT(CASE WHEN Status = 'Refund' OR Status = 'Order_Refund' THEN 1 END) * 100.0) 
        / COUNT(*), 2
    ) AS Refund_Rate
FROM `angani sales data`;


SELECT
    p.Category,
    ROUND(SUM(s.Mv), 2) AS Total_Revenue,
    COUNT(DISTINCT s.Increment_Id) AS Total_Orders
FROM `angani sales data` s
JOIN `product master` p ON s.Sku_Id = p.Sku_Id
GROUP BY p.Category
ORDER BY Total_Revenue DESC;


SELECT
    Status,
    COUNT(*) AS Total_Orders,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS Percentage
FROM `angani sales data`
GROUP BY Status
ORDER BY Total_Orders DESC;


SELECT
    YEAR(STR_TO_DATE(Created_At, '%m/%d/%Y %H:%i')) AS Year,
    MONTH(STR_TO_DATE(Created_At, '%m/%d/%Y %H:%i')) AS Month,
    ROUND(SUM(Mv), 2) AS Revenue
FROM `angani sales data`
WHERE Status = 'Complete'
GROUP BY 
    YEAR(STR_TO_DATE(Created_At, '%m/%d/%Y %H:%i')), 
    MONTH(STR_TO_DATE(Created_At, '%m/%d/%Y %H:%i'))
ORDER BY Year, Month;


SELECT
    Payment_Method,
    COUNT(*) AS Total_Orders,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS Percentage
FROM `angani sales data`
GROUP BY Payment_Method
ORDER BY Total_Orders DESC;


SELECT
    p.Sku,
    ROUND(SUM(s.Mv), 2) AS Revenue,
    COUNT(*) AS Orders
FROM `angani sales data` s
JOIN `product master` p ON s.Sku_Id = p.Sku_Id
GROUP BY p.Sku
ORDER BY Revenue DESC
LIMIT 10;


SELECT COUNT(*) AS Orphan_Rows
FROM `angani sales data` s
LEFT JOIN `product master` p ON s.Sku_Id = p.Sku_Id
WHERE p.Sku_Id IS NULL;